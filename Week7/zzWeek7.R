### ************************************
### PREFACE ----
### ************************************

# future improvement ideas:

# distill manual input for teams down to single vectors for points for 
# and bench points, then use each team's schedule to determing opponent info

# auto adjust y axis for lollipop plots... could use something like this: 
# ifelse(max(master.smry.df$y.pts.for) > max(master.smry.df$y.pts.agn),
# yes = max(master.smry.df$y.pts.for)+25, 
# no = max(master.smry.df$y.pts.agn)+25) but 25 wouldn't work as a fixed value
# and how to handle breaks and labels...

# dependencies accessed via pkg::name
# dplyr
# ggpubr

# dependencies accessed via require
require(ggplot2)

### ************************************
### INTERNAL FUNCTION ----
### ************************************

# custsom ggplot2 theme
theme_wizard <- function(){
  # base theme specifying Courier as the font family
  theme_bw(base_family = "Courier") +
    # blank the background and grids and increase line size for the border
    theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_rect(fill = NA, size = 1.1, color = "#000000"))
}

### ************************************
### DYNAMIC INPUTS FOR PLOTS ----
### ************************************

week <- c(1:7)

# line plots:
y.lims.line.p <- c(80, 210)
y.brks.line.p <- c(100, 125, 150, 175, 200)

# lollipop plots:
y.lims.loll.p <- c(-1, 1235)
y.brks.loll.p <- c(50, 100, 150, 200, 250, 300, 350, 400, 450, 
                   500, 550, 600, 650, 700, 750, 800, 850, 900, 950, 
                   1000, 1050, 1100, 1150, 1200)
y.labs.loll.p <- c("", "100", "", "200", "", "300", "", "400", "","500", "", 
                   "600", "", "700", "", "800", "", "900", "", "1000", "", 
                   "1100", "", "1200")
wdth.mm <- 200
hght.mm <- 200

### ************************************
### DYNAMIC INPUTS FOR TEAMS ----
### ************************************

# CC
# Mr. Robinson
CC.tme.pts <- c(121.8, 138.2, 130.3, 174.6, 112.2, 166.7, 120.9)
CC.opp.pts <- c(140.9, 135.2, 137.4, 146.7, 158.6, 139.1, 156.5)

CC.tme.pts.bch <- c(55.0, 60.1, 44.0, 59.5, 71.2, 62.2, 34.7)
CC.opp.pts.bch <- c(52.9, 59.9, 53.3, 93.4, 51.8, 85.8, 33.2)

# CS
# Matt Top Swartz Bottom
CS.tme.pts <- c(132.4, 130.3, 136.3, 146.0, 152.2, 084.3, 116.9)
CS.opp.pts <- c(160.8, 162.9, 143.9, 137.6, 131.9, 103.1, 115.4)


CS.tme.pts.bch <- c(62.0, 48.2, 32.9, 75.7, 39.3, 37.9, 48.1)
CS.opp.pts.bch <- c(56.5, 31.4, 33.6, 60.0, 43.9, 25.7, 29.2)

# ES
# If It Fitz It Ships
ES.tme.pts <- c(166.4, 135.2, 134.6, 137.6, 109.0, 126.7, 146.5)
ES.opp.pts <- c(091.9, 138.2, 118.8, 146.0, 130.6, 204.8, 129.3)

ES.tme.pts.bch <- c(37.9, 59.9, 61.9, 60.0, 45.3, 49.8, 36.1)
ES.opp.pts.bch <- c(41.8, 60.1, 90.4, 75.7, 76.6, 49.8, 56.2)

# JR
# Kareem Pie
JR.tme.pts <- c(091.9, 151.4, 143.9, 166.2, 160.5, 167.8, 169.7)
JR.opp.pts <- c(166.4, 167.3, 136.3, 145.9, 100.1, 112.4, 163.1)

JR.tme.pts.bch <- c(48.8, 62.5, 33.6, 42.1, 56.1, 33.3, 34.3)
JR.opp.pts.bch <- c(37.9, 71.2, 32.9, 42.3, 34.8, 53.6, 36.9)

# JW
# Team Lunesta
JW.tme.pts <- c(139.9, 167.3, 118.8, 200.2, 131.9, 127.6, 156.5)
JW.opp.pts <- c(185.3, 151.4, 134.6, 138.5, 152.2, 184.6, 120.9)

JW.tme.pts.bch <- c(70.2, 71.2, 90.4, 93.7, 43.9, 49.4, 33.2)
JW.opp.pts.bch <- c(35.2, 62.5, 61.9, 30.9, 39.3, 82.1, 34.7)

# KC
# Mr. Rodgers Neighborhood 
KC.tme.pts <- c(140.9, 115.6, 129.2, 111.6, 100.1, 103.1, 129.3)
KC.opp.pts <- c(121.8, 158, 165.7, 120.7, 160.5, 084.3, 146.5)

KC.tme.pts.bch <- c(52.9, 87.4, 52.7, 100.6, 34.8, 25.7, 56.2)
KC.opp.pts.bch <- c(55.0, 110.4, 34.7, 24.0, 56.1, 37.9, 36.1)

# KP
# The Gordon Gurls
KP.tme.pts <- c(160.8, 173.9, 165.7, 146.7, 193.6, 204.8, 150.5)
KP.opp.pts <- c(132.4, 151.4, 129.2, 174.6, 149, 126.7, 132.1)

KP.tme.pts.bch <- c(56.5, 59.2, 34.7, 93.4, 69.2, 49.8, 56.1)
KP.opp.pts.bch <- c(62.0, 52.7, 52.7, 59.5, 37.5, 49.8, 25.2)

# MR
# Big Johnson
MR.tme.pts <- c(185.3, 162.9, 097.7, 145.9, 130.6, 139.1, 132.1)
MR.opp.pts <- c(139.9, 130.3, 121.0, 166.2, 109.0, 166.7, 150.5)

MR.tme.pts.bch <- c(35.2, 31.4, 51.8, 42.3, 76.6, 85.8, 25.2)
MR.opp.pts.bch <- c(70.2, 48.2, 86.0, 42.1, 45.3, 62.2, 56.1)

# SP
# maHomes Alone
SP.tme.pts <- c(163.6, 151.4, 121.0, 120.7, 158.6, 184.6, 163.1)
SP.opp.pts <- c(112.7, 173.9, 097.7, 111.6, 112.2, 127.6, 169.7)

SP.tme.pts.bch <- c(68.5, 52.7, 86.0, 024.0, 51.8, 82.1, 36.9)
SP.opp.pts.bch <- c(72.4, 59.2, 51.8, 100.6, 71.2, 49.4, 34.3)

# ZB
# Notorious Outlaw
ZB.tme.pts <- c(112.7, 158.0, 137.4, 138.5, 149.0, 112.4, 115.4)
ZB.opp.pts <- c(163.6, 115.6, 130.3, 200.2, 193.6, 167.8, 116.9)

ZB.tme.pts.bch <- c(72.4, 110.4, 53.3, 30.9, 37.5, 53.6, 29.2)
ZB.opp.pts.bch <- c(68.5, 087.4, 44.0, 93.7, 69.2, 32.3, 48.1)

### ************************************
### STATIC INPUTS ----
### ************************************

teams <- c("CC", "CS", "ES", "JR", "JW", "KC", "KP", "MR", "SP", "ZB")

# schedules
CC.sch <- c("KC", "ES", "ZB", "KP", "SP", "MR", "JW",
            "JR", "KC", "CS", "ZB", "KP", "SP")
CS.sch <- c("KP", "MR", "JR", "ES", "JW", "KC", "ZB",
            "SP", "JW", "CC", "MR", "JR", "ES")
ES.sch <- c("JR", "CC", "JW", "CS", "MR", "KP", "KC",
            "ZB", "MR", "JR", "SP", "JW", "CS")
JR.sch <- c("ES", "JW", "CS", "MR", "KC", "ZB", "SP",
            "CC", "KP", "ES", "JW", "CS", "MR")
JW.sch <- c("MR", "JR", "ES", "ZB", "CS", "SP", "CC",
            "KP", "CS", "MR", "JR", "ES", "KC")
KC.sch <- c("CC", "ZB", "KP", "SP", "JR", "CS", "ES",
            "MR", "CC", "ZB", "KP", "SP", "JW")
KP.sch <- c("CS", "SP", "KC", "CC", "ZB", "ES", "MR",
            "JW", "JR", "SP", "KC", "CC", "ZB")
MR.sch <- c("JW", "ES", "SP", "JR", "ES", "CC", "KP",
            "KC", "ES", "JW", "CS", "ZB", "JR")
SP.sch <- c("ZB", "KP", "MR", "KC", "CC", "JW", "JR",
            "CS", "ZB", "KP", "ES", "KC", "CC")
ZB.sch <- c("SP", "KC", "CC", "JW", "KP", "JR", "CS",
            "ES", "SP", "KC", "CC", "MR", "KP")

### ************************************
### CREATE TEAM DATA.FRAMES ----
### ************************************

CC.df <- data.frame("Week" = week,
                    "Team" = "CC",
                    "Win" = ifelse(CC.tme.pts > CC.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(CC.tme.pts < CC.opp.pts, yes = 1, no = 0),
                    "Points.For" = CC.tme.pts,
                    "Points.Agnst" = CC.opp.pts,
                    "Opponent" = CC.sch[week],
                    "Bench.For" = CC.tme.pts.bch,
                    "Bench.Agnst" = CC.opp.pts.bch)

CS.df <- data.frame("Week" = week,
                    "Team" = "CS",
                    "Win" = ifelse(CS.tme.pts > CS.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(CS.tme.pts < CS.opp.pts, yes = 1, no = 0),
                    "Points.For" = CS.tme.pts,
                    "Points.Agnst" = CS.opp.pts,
                    "Opponent" = CS.sch[week],
                    "Bench.For" = CS.tme.pts.bch,
                    "Bench.Agnst" = CS.opp.pts.bch)

ES.df <- data.frame("Week" = week,
                    "Team" = "ES",
                    "Win" = ifelse(ES.tme.pts > ES.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(ES.tme.pts < ES.opp.pts, yes = 1, no = 0),
                    "Points.For" = ES.tme.pts,
                    "Points.Agnst" = ES.opp.pts,
                    "Opponent" = ES.sch[week],
                    "Bench.For" = ES.tme.pts.bch,
                    "Bench.Agnst" = ES.opp.pts.bch)

JR.df <- data.frame("Week" = week,
                    "Team" = "JR",
                    "Win" = ifelse(JR.tme.pts > JR.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(JR.tme.pts < JR.opp.pts, yes = 1, no = 0),
                    "Points.For" = JR.tme.pts,
                    "Points.Agnst" = JR.opp.pts,
                    "Opponent" = JR.sch[week],
                    "Bench.For" = JR.tme.pts.bch,
                    "Bench.Agnst" = JR.opp.pts.bch)

JW.df <- data.frame("Week" = week,
                    "Team" = "JW",
                    "Win" = ifelse(JW.tme.pts > JW.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(JW.tme.pts < JW.opp.pts, yes = 1, no = 0),
                    "Points.For" = JW.tme.pts,
                    "Points.Agnst" = JW.opp.pts,
                    "Opponent" = JW.sch[week],
                    "Bench.For" = JW.tme.pts.bch,
                    "Bench.Agnst" = JW.opp.pts.bch)

KC.df <- data.frame("Week" = week,
                    "Team" = "KC",
                    "Win" = ifelse(KC.tme.pts > KC.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(KC.tme.pts < KC.opp.pts, yes = 1, no = 0),
                    "Points.For" = KC.tme.pts,
                    "Points.Agnst" = KC.opp.pts,
                    "Opponent" = KC.sch[week],
                    "Bench.For" = KC.tme.pts.bch,
                    "Bench.Agnst" = KC.opp.pts.bch)

KP.df <- data.frame("Week" = week,
                    "Team" = "KP",
                    "Win" = ifelse(KP.tme.pts > KP.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(KP.tme.pts < KP.opp.pts, yes = 1, no = 0),
                    "Points.For" = KP.tme.pts,
                    "Points.Agnst" = KP.opp.pts,
                    "Opponent" = KP.sch[week],
                    "Bench.For" = KP.tme.pts.bch,
                    "Bench.Agnst" = KP.opp.pts.bch)

MR.df <- data.frame("Week" = week,
                    "Team" = "MR",
                    "Win" = ifelse(MR.tme.pts > MR.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(MR.tme.pts < MR.opp.pts, yes = 1, no = 0),
                    "Points.For" = MR.tme.pts,
                    "Points.Agnst" = MR.opp.pts,
                    "Opponent" = MR.sch[week],
                    "Bench.For" = MR.tme.pts.bch,
                    "Bench.Agnst" = MR.opp.pts.bch)

SP.df <- data.frame("Week" = week,
                    "Team" = "SP",
                    "Win" = ifelse(SP.tme.pts > SP.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(SP.tme.pts < SP.opp.pts, yes = 1, no = 0),
                    "Points.For" = SP.tme.pts,
                    "Points.Agnst" = SP.opp.pts,
                    "Opponent" = SP.sch[week],
                    "Bench.For" = SP.tme.pts.bch,
                    "Bench.Agnst" = SP.opp.pts.bch)

ZB.df <- data.frame("Week" = week,
                    "Team" = "ZB",
                    "Win" = ifelse(ZB.tme.pts > ZB.opp.pts, yes = 1, no = 0),
                    "Loss" = ifelse(ZB.tme.pts < ZB.opp.pts, yes = 1, no = 0),
                    "Points.For" = ZB.tme.pts,
                    "Points.Agnst" = ZB.opp.pts,
                    "Opponent" = ZB.sch[week],
                    "Bench.For" = ZB.tme.pts.bch,
                    "Bench.Agnst" = ZB.opp.pts.bch)

master.team.df <- rbind(CC.df, CS.df, ES.df, JR.df, JW.df,
                        KC.df, KP.df, MR.df, SP.df, ZB.df)

### ************************************
### LINE PLOTS ----
### ************************************

# master line plot
p.line <- ggplot(data = master.team.df, 
                 aes(x = Week, y = Points.For, group = Team)) +
  geom_line(size = 0.4, color = "#cccccc") +
  geom_label(size = 1.4, aes(label = Team), vjust = "middle", hjust = "middle",
             label.r = unit(0, "mm"), label.padding = unit(0.4, "mm"),
             family = "Courier", color = "#cccccc") +
  scale_x_continuous(limits = c(head(week, n = 1), tail(week, n = 1)),
                     labels = paste("Week\n", week, sep = ""), breaks = week, 
                     expand = c(0, 0.1)) +
  scale_y_continuous(limits = y.lims.line.p, breaks = y.brks.line.p, 
                     expand = c(0, 0)) +
  theme_wizard() +
  theme(axis.title = element_blank(),
        axis.text = element_text(size = 9))

# team specific line plots
p.line.CC <- p.line +
  geom_path(size = 1.1, data = CC.df, x = CC.df$Week, y = CC.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = CC.df, x = CC.df$Week, y = CC.df$Points.For,
             label = CC.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.CS <- p.line +
  geom_path(size = 1.1, data = CS.df, x = CS.df$Week, y = CS.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = CS.df, x = CS.df$Week, y = CS.df$Points.For,
             label = CS.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.ES <- p.line +
  geom_path(size = 1.1, data = ES.df, x = ES.df$Week, y = ES.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = ES.df, x = ES.df$Week, y = ES.df$Points.For,
             label = ES.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.JR <- p.line +
  geom_path(size = 1.1, data = JR.df, x = JR.df$Week, y = JR.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = JR.df, x = JR.df$Week, y = JR.df$Points.For,
             label = JR.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.JW <- p.line +
  geom_path(size = 1.1, data = JW.df, x = JW.df$Week, y = JW.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = JW.df, x = JW.df$Week, y = JW.df$Points.For,
             label = JW.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.KC <- p.line +
  geom_path(size = 1.1, data = KC.df, x = KC.df$Week, y = KC.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = KC.df, x = KC.df$Week, y = KC.df$Points.For,
             label = KC.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.KP <- p.line +
  geom_path(size = 1.1, data = KP.df, x = KP.df$Week, y = KP.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = KP.df, x = KP.df$Week, y = KP.df$Points.For,
             label = KP.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.MR <- p.line +
  geom_path(size = 1.1, data = MR.df, x = MR.df$Week, y = MR.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = MR.df, x = MR.df$Week, y = MR.df$Points.For,
             label = MR.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.SP <- p.line +
  geom_path(size = 1.1, data = SP.df, x = SP.df$Week, y = SP.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = SP.df, x = SP.df$Week, y = SP.df$Points.For,
             label = SP.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

p.line.ZB <- p.line +
  geom_path(size = 1.1, data = ZB.df, x = ZB.df$Week, y = ZB.df$Points.For, 
            color = "#33a02c", inherit.aes = FALSE) +
  geom_label(size = 2.4, data = ZB.df, x = ZB.df$Week, y = ZB.df$Points.For,
             label = ZB.df$Team, vjust = "middle", hjust = "middle", 
             label.r = unit(0, "mm"), label.padding = unit(0.75, "mm"),
             family = "Courier", color = "#33a02c", inherit.aes = FALSE)

### ************************************
### CREATE SUMMARY STATS DATA.FRAMES ----
### ************************************

master.smry.df <- data.frame("Team" = teams,
                             "x.pts.for" = c(1:10)-0.15,
                             "x.pts.agn" = c(1:10)+0.15,
                             "y.pts.for" = c(sum(CC.tme.pts), sum(CS.tme.pts),
                                             sum(ES.tme.pts), sum(JR.tme.pts),
                                             sum(JW.tme.pts), sum(KC.tme.pts),
                                             sum(KP.tme.pts), sum(MR.tme.pts),
                                             sum(SP.tme.pts), sum(ZB.tme.pts)),
                             "y.pts.agn" = c(sum(CC.opp.pts), sum(CS.opp.pts),
                                             sum(ES.opp.pts), sum(JR.opp.pts),
                                             sum(JW.opp.pts), sum(KC.opp.pts),
                                             sum(KP.opp.pts), sum(MR.opp.pts),
                                             sum(SP.opp.pts), sum(ZB.opp.pts)))

CC.smry.df <- dplyr::filter(master.smry.df, Team == "CC")
CS.smry.df <- dplyr::filter(master.smry.df, Team == "CS")
ES.smry.df <- dplyr::filter(master.smry.df, Team == "ES")
JR.smry.df <- dplyr::filter(master.smry.df, Team == "JR")
JW.smry.df <- dplyr::filter(master.smry.df, Team == "JW")
KC.smry.df <- dplyr::filter(master.smry.df, Team == "KC")
KP.smry.df <- dplyr::filter(master.smry.df, Team == "KP")
MR.smry.df <- dplyr::filter(master.smry.df, Team == "MR")
SP.smry.df <- dplyr::filter(master.smry.df, Team == "SP")
ZB.smry.df <- dplyr::filter(master.smry.df, Team == "ZB")

### ************************************
### LOLLIPOP PLOTS ----
### ************************************

# master lollipop plot
p.loll <- ggplot(data = master.smry.df) +
  geom_segment(size = 0.4, x = master.smry.df$x.pts.for, 
               xend = master.smry.df$x.pts.for, y = -0.1, 
               yend = master.smry.df$y.pts.for, color = "#cccccc", alpha = 1) +
  geom_point(size = 2.4, x = master.smry.df$x.pts.for, 
             y = master.smry.df$y.pts.for, color = "#cccccc", alpha = 1, 
             fill = "#cccccc", shape = 21, stroke = 0.5) +
  geom_segment(size = 0.4, x = master.smry.df$x.pts.agn, 
               xend = master.smry.df$x.pts.agn, y = -0.1, 
               yend = master.smry.df$y.pts.agn, color = "#cccccc", alpha = 1) +
  geom_point(size = 2.4, x = master.smry.df$x.pts.agn, 
             y = master.smry.df$y.pts.agn, color = "#cccccc", alpha = 1, 
             fill = "#cccccc", shape = 21, stroke = 0.5) +
  scale_x_continuous(limits = c(0.7, 10.3), breaks = c(1:10),
                     labels = teams, expand = c(0, 0.1)) +
  scale_y_continuous(limits = y.lims.loll.p, breaks = y.brks.loll.p, 
                     labels = y.labs.loll.p, expand = c(0, 0)) +
  annotate(size = 3, geom = "text", family = "Courier", color = "#33a02c", 
           x = 0.9, label = "For",
           y = ifelse(max(master.smry.df$y.pts.for) > 
                        max(master.smry.df$y.pts.agn),
                      yes = max(master.smry.df$y.pts.for), 
                      no = max(master.smry.df$y.pts.agn))) +
  annotate(size = 3, geom = "text", family = "Courier", color = "#d01c8b", 
           x = 1.6, label = "Against",
           y = ifelse(max(master.smry.df$y.pts.for) > 
                        max(master.smry.df$y.pts.agn),
                      yes = max(master.smry.df$y.pts.for), 
                      no = max(master.smry.df$y.pts.agn))) +
  theme_wizard() +
  theme(axis.title = element_blank(),
        axis.text = element_text(size = 9))

# team specific line plots
p.loll.CC <- p.loll +
  geom_segment(size = 0.8, x = CC.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = CC.smry.df$x.pts.for, y = -0.1, 
               yend = CC.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = CC.smry.df$x.pts.for, inherit.aes = FALSE,
             y = CC.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = CC.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = CC.smry.df$x.pts.agn, y = -0.1, 
               yend = CC.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = CC.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = CC.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(9, 7, 7, 7, 7, 7, 7, 7, 7, 7),
                                   color = c("#33a02c", "#cccccc", "#cccccc",
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc")))

p.loll.CS <- p.loll +
  geom_segment(size = 0.8, x = CS.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = CS.smry.df$x.pts.for, y = -0.1, 
               yend = CS.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = CS.smry.df$x.pts.for, inherit.aes = FALSE,
             y = CS.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = CS.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = CS.smry.df$x.pts.agn, y = -0.1, 
               yend = CS.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = CS.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = CS.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 9, 7, 7, 7, 7, 7, 7, 7, 7),
                                   color = c("#cccccc", "#33a02c", "#cccccc", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc")))

p.loll.ES <- p.loll +
  geom_segment(size = 0.8, x = ES.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = ES.smry.df$x.pts.for, y = -0.1, 
               yend = ES.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = ES.smry.df$x.pts.for, inherit.aes = FALSE,
             y = ES.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = ES.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = ES.smry.df$x.pts.agn, y = -0.1, 
               yend = ES.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = ES.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = ES.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 9, 7, 7, 7, 7, 7, 7, 7),
                                   color = c("#cccccc", "#cccccc", "#33a02c", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc")))

p.loll.JR <- p.loll +
  geom_segment(size = 0.8, x = JR.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = JR.smry.df$x.pts.for, y = -0.1, 
               yend = JR.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = JR.smry.df$x.pts.for, inherit.aes = FALSE,
             y = JR.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = JR.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = JR.smry.df$x.pts.agn, y = -0.1, 
               yend = JR.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = JR.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = JR.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 7, 9, 7, 7, 7, 7, 7, 7),
                                   color = c("#cccccc", "#cccccc", "#cccccc",
                                             "#33a02c", "#cccccc", "#cccccc", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc")))

p.loll.JW <- p.loll +
  geom_segment(size = 0.8, x = JW.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = JW.smry.df$x.pts.for, y = -0.1, 
               yend = JW.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = JW.smry.df$x.pts.for, inherit.aes = FALSE,
             y = JW.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = JW.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = JW.smry.df$x.pts.agn, y = -0.1, 
               yend = JW.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = JW.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = JW.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 7, 7, 9, 7, 7, 7, 7, 7),
                                   color = c("#cccccc", "#cccccc", "#cccccc",
                                             "#cccccc", "#33a02c", "#cccccc", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc")))

p.loll.KC <- p.loll +
  geom_segment(size = 0.8, x = KC.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = KC.smry.df$x.pts.for, y = -0.1, 
               yend = KC.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = KC.smry.df$x.pts.for, inherit.aes = FALSE,
             y = KC.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = KC.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = KC.smry.df$x.pts.agn, y = -0.1, 
               yend = KC.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = KC.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = KC.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 7, 7, 7, 9, 7, 7, 7, 7),
                                   color = c("#cccccc", "#cccccc", "#cccccc",
                                             "#cccccc", "#cccccc", "#33a02c", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc")))

p.loll.KP <- p.loll +
  geom_segment(size = 0.8, x = KP.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = KP.smry.df$x.pts.for, y = -0.1, 
               yend = KP.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = KP.smry.df$x.pts.for, inherit.aes = FALSE,
             y = KP.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = KP.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = KP.smry.df$x.pts.agn, y = -0.1, 
               yend = KP.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = KP.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = KP.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 7, 7, 7, 7, 9, 7, 7, 7),
                                   color = c("#cccccc", "#cccccc", "#cccccc",
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#33a02c", "#cccccc", "#cccccc", 
                                             "#cccccc")))

p.loll.MR <- p.loll +
  geom_segment(size = 0.8, x = MR.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = MR.smry.df$x.pts.for, y = -0.1, 
               yend = MR.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = MR.smry.df$x.pts.for, inherit.aes = FALSE,
             y = MR.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = MR.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = MR.smry.df$x.pts.agn, y = -0.1, 
               yend = MR.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = MR.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = MR.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 7, 7, 7, 7, 7, 9, 7, 7),
                                   color = c("#cccccc", "#cccccc", "#cccccc",
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc", "#33a02c", "#cccccc", 
                                             "#cccccc")))

p.loll.SP <- p.loll +
  geom_segment(size = 0.8, x = SP.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = SP.smry.df$x.pts.for, y = -0.1, 
               yend = SP.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = SP.smry.df$x.pts.for, inherit.aes = FALSE,
             y = SP.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = SP.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = SP.smry.df$x.pts.agn, y = -0.1, 
               yend = SP.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = SP.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = SP.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 7, 7, 7, 7, 7, 7, 9, 7),
                                   color = c("#cccccc", "#cccccc", "#cccccc",
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc", "#cccccc", "#33a02c",  
                                             "#cccccc")))

p.loll.ZB <- p.loll +
  geom_segment(size = 0.8, x = ZB.smry.df$x.pts.for, inherit.aes = FALSE,
               xend = ZB.smry.df$x.pts.for, y = -0.1, 
               yend = ZB.smry.df$y.pts.for, color = "#33a02c", alpha = 1) +
  geom_point(size = 3.3, x = ZB.smry.df$x.pts.for, inherit.aes = FALSE,
             y = ZB.smry.df$y.pts.for, color = "#33a02c", alpha = 1, 
             fill = "#33a02c", shape = 21, stroke = 1.1) +
  geom_segment(size = 0.8, x = ZB.smry.df$x.pts.agn, inherit.aes = FALSE,
               xend = ZB.smry.df$x.pts.agn, y = -0.1, 
               yend = ZB.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1) +
  geom_point(size = 3.3, x = ZB.smry.df$x.pts.agn, inherit.aes = FALSE,
             y = ZB.smry.df$y.pts.agn, color = "#d01c8b", alpha = 1, 
             fill = "#d01c8b", shape = 21, stroke = 1.1) +
  theme(axis.text.x = element_text(size = c(7, 7, 7, 7, 7, 7, 7, 7, 7, 9),
                                   color = c("#cccccc", "#cccccc", "#cccccc",
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#cccccc", "#cccccc", "#cccccc", 
                                             "#33a02c")))

### ************************************
### ARRANGE LINES AND LOLLIPOPS ----
### ************************************

# using ggpubr, arrange plots into panels
p.CC <- ggpubr::ggarrange(p.line.CC, p.loll.CC, ncol = 1, nrow = 2, align = "v")
p.CS <- ggpubr::ggarrange(p.line.CS, p.loll.CS, ncol = 1, nrow = 2, align = "v")
p.ES <- ggpubr::ggarrange(p.line.ES, p.loll.ES, ncol = 1, nrow = 2, align = "v")
p.JR <- ggpubr::ggarrange(p.line.JR, p.loll.JR, ncol = 1, nrow = 2, align = "v")
p.JW <- ggpubr::ggarrange(p.line.JW, p.loll.JW, ncol = 1, nrow = 2, align = "v")
p.KC <- ggpubr::ggarrange(p.line.KC, p.loll.KC, ncol = 1, nrow = 2, align = "v")
p.KP <- ggpubr::ggarrange(p.line.KP, p.loll.KP, ncol = 1, nrow = 2, align = "v")
p.MR <- ggpubr::ggarrange(p.line.MR, p.loll.MR, ncol = 1, nrow = 2, align = "v")
p.SP <- ggpubr::ggarrange(p.line.SP, p.loll.SP, ncol = 1, nrow = 2, align = "v")
p.ZB <- ggpubr::ggarrange(p.line.ZB, p.loll.ZB, ncol = 1, nrow = 2, align = "v")

### ************************************
### SAVE PLOTS ----
### ************************************

# save plots
setwd("~/Desktop/fantasy/week7/")
ggsave("CC.pdf", plot = p.CC, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("CS.pdf", plot = p.CS, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("ES.pdf", plot = p.ES, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("JR.pdf", plot = p.JR, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("JW.pdf", plot = p.JW, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("KC.pdf", plot = p.KC, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("KP.pdf", plot = p.KP, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("MR.pdf", plot = p.MR, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("SP.pdf", plot = p.SP, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")
ggsave("ZB.pdf", plot = p.ZB, dpi = 600, width = wdth.mm, height = hght.mm, 
       units = "mm", device = "pdf")

save.image(file = "zzWeek7_WS.Rdata")










