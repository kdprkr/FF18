# packages required for this file to 'Source'
# "ggplot2"
# "ggpubr"

#########################################
################ Fantasy ################
#########################################

# CC CS ES JR JW KC KP MR SP ZB

# universal - dynamic
week <- c(1:6)
line.x.labs <- c("Week\n1","Week\n2","Week\n3","Week\n4","Week\n5","Week\n6")
line.x.lims <- c(1,6)
line.x.brks <- c(1:6)
line.y.lims <- c(80, 210)
line.y.brks <- c(100, 125, 150, 175, 200)
lol.y.lims <- c(-1, 1090)
lol.y.brks <- c(0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500, 550, 600, 650, 700, 750, 800, 850, 900, 950, 1000, 1050)
lol.y.labs <- c("", "50", "", "150", "", "250", "", "350", "", "450", "", "550", "", "650", "", "750", "", "850", "", "950", "", "1050")
lol.y.for <- 1050
lol.y.agnst <- 1050

# universal - static
teams <- c("CC", "CS", "ES", "JR", "JW", "KC", "KP", "MR", "SP", "ZB")

#
# CC
# Mr. Robinson
# create vectors for team-based data.frame
cc.team <- "CC"
cc.win <- c(0, 1, 0, 1, 0, 1)
cc.loss <- c(1, 0, 1, 0, 1, 0)

cc.pts <- c(121.8, 138.2, 130.3, 174.6, 112.2, 166.7)
cc.bench.pts <- c(55, 60.1, 44, 59.5, 71.2, 62.2)

cc.opp <- c("KC", "ES", "ZB", "KP", "SP", "MR")
cc.opp.pts <- c(140.9, 135.2, 137.4, 146.7, 158.6, 139.2)
cc.bench.opp.pts <- c(52.9, 59.9, 53.3, 93.4, 51.8, 85.8)

# create data.frame from the vectors
cc.team.df <- data.frame("Week"=week, "Team"=cc.team, "Win"=cc.win, "Loss"=cc.loss, "Points"=cc.pts,
                         "Bench.Points"=cc.bench.pts, "Opponent"=cc.opp, "Opp.Points"=cc.opp.pts,
                         "Opp.Bench.Points"=cc.bench.opp.pts)

#
# CS
# Matt Top Swartz Bottom
# create vectors for team-based data.frame
cs.team <- "CS"
cs.win <- c(0, 0, 0, 1, 1, 0)
cs.loss <- c(1, 1, 1, 0, 0, 1)

cs.pts <- c(132.4, 130.3, 136.3, 146, 152.2, 84.3)
cs.bench.pts <- c(62, 48.2, 32.9, 75.7, 39.3, 37.9)

cs.opp <- c("KP", "MR", "JR", "ES", "JW", "KC")
cs.opp.pts <- c(160.8, 162.9, 143.9, 137.6, 131.9, 103.1)
cs.bench.opp.pts <- c(56.5, 31.4, 33.6, 60, 43.9, 25.7)


# create data.frame from the vectors
cs.team.df <- data.frame("Week"=week, "Team"=cs.team, "Win"=cs.win, "Loss"=cs.loss, "Points"=cs.pts,
                         "Bench.Points"=cs.bench.pts, "Opponent"=cs.opp, "Opp.Points"=cs.opp.pts,
                         "Opp.Bench.Points"=cs.bench.opp.pts)

#
# ES
# If It Fitz It Ships
# create vectors for team-based data.frame
es.team <- "ES"
es.win <- c(1, 0, 1, 0, 0, 0)
es.loss <- c(0, 1, 0, 1, 1, 1)

es.pts <- c(166.4, 135.2, 134.6, 137.6, 109, 126.7)
es.bench.pts <- c(37.9, 59.9, 61.9, 60, 45.3, 49.8)

es.opp <- c("JR", "CC", "JW", "CS", "MR", "KP")
es.opp.pts <- c(91.9, 138.2, 118.8, 146, 130.6, 204.8)
es.bench.opp.pts <- c(41.8, 60.1, 90.4, 75.7, 76.6, 49.8)

# create data.frame from the vectors
es.team.df <- data.frame("Week"=week, "Team"=es.team, "Win"=es.win, "Loss"=es.loss, "Points"=es.pts,
                         "Bench.Points"=es.bench.pts, "Opponent"=es.opp, "Opp.Points"=es.opp.pts,
                         "Opp.Bench.Points"=es.bench.opp.pts)

#
# JR
# Kareem Pie
# create vectors for team-based data.frame
jr.team <- "JR"
jr.win <- c(0, 0, 1, 1, 1, 1)
jr.loss <- c(1, 1, 0, 0, 0, 0)

jr.pts <- c(91.9, 151.4, 143.9, 166.2, 160.5, 167.8)
jr.bench.pts <- c(48.8, 62.5, 33.6, 42.1, 56.1, 33.3)

jr.opp <- c("ES", "JW", "CS", "MR", "KC", "ZB")
jr.opp.pts <- c(166.4, 167.3, 136.3, 145.9, 100.1, 112.4)
jr.bench.opp.pts <- c(37.9, 71.2, 32.9, 42.3, 34.8, 53.6)

# create data.frame from the vectors
jr.team.df <- data.frame("Week"=week, "Team"=jr.team, "Win"=jr.win, "Loss"=jr.loss, "Points"=jr.pts, 
                         "Bench.Points"=jr.bench.pts, "Opponent"=jr.opp, "Opp.Points"=jr.opp.pts,
                         "Opp.Bench.Points"=jr.bench.opp.pts)

#
# JW
# Team Lunesta
# create vectors for team-based data.frame
jw.team <- "JW"
jw.win <- c(0, 1, 0, 1, 0, 0)
jw.loss <- c(1, 0, 1, 0, 1, 1)

jw.pts <- c(139.9, 167.3, 118.8, 200.2, 131.9, 127.6)
jw.bench.pts <- c(70.2, 71.2, 90.4, 93.7, 43.9, 49.4)

jw.opp <- c("MR", "JR", "ES", "ZB", "CS", "SP")
jw.opp.pts <- c(185.3, 151.4, 134.6, 138.5, 152.2, 184.5)
jw.bench.opp.pts <- c(35.2, 62.5, 61.9, 30.9, 39.3, 82.1)

# create data.frame from the vectors
jw.team.df <- data.frame("Week"=week, "Team"=jw.team, "Win"=jw.win, "Loss"=jw.loss, "Points"=jw.pts,
                         "Bench.Points"=jw.bench.pts, "Opponent"=jw.opp, "Opp.Points"=jw.opp.pts,
                         "Opp.Bench.Points"=jw.bench.opp.pts)

#
# KC
# Mr. Rodgers Neighborhood
# create vectors for team-based data.frame
kc.team <- "KC"
kc.win <- c(1, 0, 0, 0, 0, 1)
kc.loss <- c(0, 1, 1, 1, 1, 0)

kc.pts <- c(140.9, 115.6, 129.2, 111.6, 100.1, 103.1)
kc.bench.pts <- c(52.9, 87.4, 52.7, 100.6, 34.8, 25.7)

kc.opp <- c("CC", "ZB", "KP", "SP", "JR", "CS")
kc.opp.pts <- c(121.8, 158, 165.7, 120.7, 160.5, 84.3)
kc.bench.opp.pts <- c(55, 110.4, 34.7, 24, 56.1, 37.9)

# create data.frame from the vectors
kc.team.df <- data.frame("Week"=week, "Team"=kc.team, "Win"=kc.win, "Loss"=kc.loss, "Points"=kc.pts,
                         "Bench.Points"=kc.bench.pts, "Opponent"=kc.opp, "Opp.Points"=kc.opp.pts,
                         "Opp.Bench.Points"=kc.bench.opp.pts)

#
# KP
# The Gordon Gurls
# create vectors for team-based data.frame
kp.team <- "KP"
kp.win <- c(1, 1, 1, 0, 1, 1)
kp.loss <- c(0, 0, 0, 1, 0, 0)

kp.pts <- c(160.8, 173.9, 165.7, 146.7, 193.6, 204.8)
kp.bench.pts <- c(56.5, 59.2, 34.7, 93.4, 69.2, 49.8)

kp.opp <- c("CS", "SP", "KC", "CC", "ZB", "ES")
kp.opp.pts <- c(132.4, 151.4, 129.2, 174.6, 149, 126.7)
kp.bench.opp.pts <- c(62, 52.7, 52.7, 59.5, 37.5, 49.8)

# create data.frame from the vectors
kp.team.df <- data.frame("Week"=week, "Team"=kp.team, "Win"=kp.win, "Loss"=kp.loss, "Points"=kp.pts,
                         "Bench.Points"=kp.bench.pts, "Opponent"=kp.opp, "Opp.Points"=kp.opp.pts,
                         "Opp.Bench.Points"=kp.bench.opp.pts)

#
# MR
# Big Johnson
# create vectors for team-based data.frame
mr.team <- "MR"
mr.win <- c(1, 1, 0, 0, 1, 0)
mr.loss <- c(0, 0, 1, 1, 0, 1)

mr.pts <- c(185.3, 162.9, 97.7, 145.9, 130.6, 139.2)
mr.bench.pts <- c(35.2, 31.4, 51.8, 42.3, 76.6, 85.8)

mr.opp <- c("JW", "ES", "SP", "JR", "ES", "CC")
mr.opp.pts <- c(139.9, 130.3, 121, 166.2, 109, 166.7)
mr.bench.opp.pts <- c(70.2, 48.2, 86, 42.1, 45.3, 62.2)

# create data.frame from the vectors
mr.team.df <- data.frame("Week"=week, "Team"=mr.team, "Win"=mr.win, "Loss"=mr.loss, "Points"=mr.pts,
                         "Bench.Points"=mr.bench.pts, "Opponent"=mr.opp, "Opp.Points"=mr.opp.pts,
                         "Opp.Bench.Points"=mr.bench.opp.pts)

#
# SP
# maHomes Alone
# create vectors for team-based data.frame
sp.team <- "SP"
sp.win <- c(1, 0, 1, 1, 1, 1)
sp.loss <- c(0, 1, 0, 0, 0, 0)

sp.pts <- c(163.6, 151.4, 121, 120.7, 158.6, 184.5)
sp.bench.pts <- c(68.5, 52.7, 86, 24, 51.8, 82.1)

sp.opp <- c("ZB", "KP", "MR", "KC", "CC", "JW")
sp.opp.pts <- c(112.7, 173.9, 97.7, 111.6, 112.2, 127.6)
sp.bench.opp.pts <- c(72.4, 59.2, 51.8, 100.6, 71.2, 49.4)

# create data.frame from the vectors
sp.team.df <- data.frame("Week"=week, "Team"=sp.team, "Win"=sp.win, "Loss"=sp.loss, "Points"=sp.pts,
                         "Bench.Points"=sp.bench.pts, "Opponent"=sp.opp, "Opp.Points"=sp.opp.pts,
                         "Opp.Bench.Points"=sp.bench.opp.pts)

#
# ZB
# Fitz Magic
# create vectors for team-based data.frame
zb.team <- "ZB"
zb.win <- c(0, 1, 1, 0, 0, 0)
zb.loss <- c(1, 0, 0, 1, 1, 1)

zb.pts <- c(112.7, 158, 137.4, 138.5, 149, 112.4)
zb.bench.pts <- c(72.4, 110.4, 53.3, 30.9, 37.5, 53.6)

zb.opp <- c("SP", "KC", "CC", "JW", "KP", "JR")
zb.opp.pts <- c(163.6, 115.6, 130.3, 200.2, 193.6, 167.8)
zb.bench.opp.pts <- c(68.5, 87.4, 44, 93.7, 69.2, 32.3)

# create data.frame from the vectors
zb.team.df <- data.frame("Week"=week, "Team"=zb.team, "Win"=zb.win, "Loss"=zb.loss, "Points"=zb.pts,
                         "Bench.Points"=zb.bench.pts, "Opponent"=zb.opp, "Opp.Points"=zb.opp.pts,
                         "Opp.Bench.Points"=zb.bench.opp.pts)

#
# Master
# create a master data.frame from each team's data.frame
master.team.df <- rbind(cc.team.df, cs.team.df, es.team.df, jr.team.df, jw.team.df, 
                        kc.team.df, kp.team.df, mr.team.df, sp.team.df, zb.team.df)

# dick with stats
cc.tot.pts <- sum(cc.pts)
cc.tot.bench.pts <- sum(cc.bench.pts)
cc.tot.opp.pts <- sum(cc.opp.pts)
cc.tot.bench.opp.pts <- sum(cc.bench.opp.pts)

cs.tot.pts <- sum(cs.pts)
cs.tot.bench.pts <- sum(cs.bench.pts)
cs.tot.opp.pts <- sum(cs.opp.pts)
cs.tot.bench.opp.pts <- sum(cs.bench.opp.pts)

es.tot.pts <- sum(es.pts)
es.tot.bench.pts <- sum(es.bench.pts)
es.tot.opp.pts <- sum(es.opp.pts)
es.tot.bench.opp.pts <- sum(es.bench.opp.pts)

jr.tot.pts <- sum(jr.pts)
jr.tot.bench.pts <- sum(jr.bench.pts)
jr.tot.opp.pts <- sum(jr.opp.pts)
jr.tot.bench.opp.pts <- sum(jr.bench.opp.pts)

jw.tot.pts <- sum(jw.pts)
jw.tot.bench.pts <- sum(jw.bench.pts)
jw.tot.opp.pts <- sum(jw.opp.pts)
jw.tot.bench.opp.pts <- sum(jw.bench.opp.pts)

kc.tot.pts <- sum(kc.pts)
kc.tot.bench.pts <- sum(kc.bench.pts)
kc.tot.opp.pts <- sum(kc.opp.pts)
kc.tot.bench.opp.pts <- sum(kc.bench.opp.pts)

kp.tot.pts <- sum(kp.pts)
kp.tot.bench.pts <- sum(kp.bench.pts)
kp.tot.opp.pts <- sum(kp.opp.pts)
kp.tot.bench.opp.pts <- sum(kp.bench.opp.pts)

mr.tot.pts <- sum(mr.pts)
mr.tot.bench.pts <- sum(mr.bench.pts)
mr.tot.opp.pts <- sum(mr.opp.pts)
mr.tot.bench.opp.pts <- sum(mr.bench.opp.pts)

sp.tot.pts <- sum(sp.pts)
sp.tot.bench.pts <- sum(sp.bench.pts)
sp.tot.opp.pts <- sum(sp.opp.pts)
sp.tot.bench.opp.pts <- sum(sp.bench.opp.pts)

zb.tot.pts <- sum(zb.pts)
zb.tot.bench.pts <- sum(zb.bench.pts)
zb.tot.opp.pts <- sum(zb.opp.pts)
zb.tot.bench.opp.pts <- sum(zb.bench.opp.pts)

# load required package
require("ggplot2")

# ggplot custom theme
gg.theme <- function(ggplot=ggplot, axis.text.x.size, axis.text.y.size){
  # internal checks to ensure correct input classes
  if(!inherits(ggplot, "ggplot")){
    stop("ggplot must be class 'ggplot'")
  }
  gg.theme <- ggplot +
    # global theme
    theme_bw() +
    # blank legend
    theme(legend.position="none") +
    # blank the plot background/grids, bold the border
    theme(panel.grid.major=element_blank(),
          panel.grid.minor=element_blank(),
          panel.border=element_rect(fill=NA, size=1.1, color="black")) +
    # axis parameters
    theme(axis.title=element_blank(),
          axis.text.x=element_text(size=axis.text.x.size),
          axis.text.y=element_text(size=axis.text.y.size)) +
    # global font family for the plot
    theme(text=element_text(family="Courier"))
  return(gg.theme)
}

#
# Panel A = Line plots

# ggplot
master.line.p <- ggplot(data=master.team.df, aes(x=Week, y=Points, group=Team)) +
  geom_line(color="#cccccc", size=0.4) +
  geom_label(aes(label=Team), label.r=unit(0,"mm"), label.padding=unit(0.4,"mm"),
            vjust="middle", hjust="middle", family="Courier", color="#cccccc", size=1.4) +
  scale_x_continuous(limits=line.x.lims, breaks=line.x.brks, labels=line.x.labs, expand=c(0,0.1)) +
  scale_y_continuous(limits=line.y.lims, breaks=line.y.brks, expand=c(0,0))
 
# CC
cc.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=cc.team.df, x=cc.team.df$Week, y=cc.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=cc.team.df, x=cc.team.df$Week, y=cc.team.df$Points, label=cc.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# CS
cs.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=cs.team.df, x=cs.team.df$Week, y=cs.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=cs.team.df, x=cs.team.df$Week, y=cs.team.df$Points, label=cs.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# ES
es.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=es.team.df, x=es.team.df$Week, y=es.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=es.team.df, x=es.team.df$Week, y=es.team.df$Points, label=es.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# JR
jr.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=jr.team.df, x=jr.team.df$Week, y=jr.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=jr.team.df, x=jr.team.df$Week, y=jr.team.df$Points, label=jr.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# JW
jw.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=jw.team.df, x=jw.team.df$Week, y=jw.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=jw.team.df, x=jw.team.df$Week, y=jw.team.df$Points, label=jw.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# KC
kc.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=kc.team.df, x=kc.team.df$Week, y=kc.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=kc.team.df, x=kc.team.df$Week, y=kc.team.df$Points, label=kc.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# KP
kp.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=kp.team.df, x=kp.team.df$Week, y=kp.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=kp.team.df, x=kp.team.df$Week, y=kp.team.df$Points, label=kp.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# MR
mr.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=mr.team.df, x=mr.team.df$Week, y=mr.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=mr.team.df, x=mr.team.df$Week, y=mr.team.df$Points, label=mr.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# SP
sp.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=sp.team.df, x=sp.team.df$Week, y=sp.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=sp.team.df, x=sp.team.df$Week, y=sp.team.df$Points, label=sp.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

# ZB
zb.line.p <- gg.theme(ggplot=master.line.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_path(inherit.aes=FALSE, data=zb.team.df, x=zb.team.df$Week, y=zb.team.df$Points, size=1.1, color="#33a02c") +
  geom_label(inherit.aes=FALSE, data=zb.team.df, x=zb.team.df$Week, y=zb.team.df$Points, label=zb.team.df$Team,
             label.r=unit(0,"mm"), label.padding=unit(0.75,"mm"),
             vjust="middle", hjust="middle", family="Courier",
             size=2.4, color="#33a02c")

#
# Panel B = Lollipop plots

# create data.frames
master.tot.pts <- data.frame("x"=c(1:10), "Team"=teams,
                            "y"=c(cc.tot.pts, cs.tot.pts, es.tot.pts, jr.tot.pts, jw.tot.pts,
                                  kc.tot.pts, kp.tot.pts, mr.tot.pts, sp.tot.pts, zb.tot.pts))
master.tot.opp.pts <- data.frame("x"=c(1:10), "Team"=teams,
                             "y"=c(cc.tot.opp.pts, cs.tot.opp.pts, es.tot.opp.pts, jr.tot.opp.pts, jw.tot.opp.pts,
                                   kc.tot.opp.pts, kp.tot.opp.pts, mr.tot.opp.pts, sp.tot.opp.pts, zb.tot.opp.pts))
master.tot.bench.pts <- data.frame("x"=c(1:10), "Team"=teams,
                             "y"=c(cc.tot.bench.pts, cs.tot.bench.pts, es.tot.bench.pts, jr.tot.bench.pts, jw.tot.bench.pts,
                                   kc.tot.bench.pts, kp.tot.bench.pts, mr.tot.bench.pts, sp.tot.bench.pts, zb.tot.bench.pts))
master.tot.bench.opp.pts <- data.frame("x"=c(1:10), "Team"=teams,
                                 "y"=c(cc.tot.bench.opp.pts, cs.tot.bench.opp.pts, es.tot.bench.opp.pts, jr.tot.bench.opp.pts, jw.tot.bench.opp.pts,
                                       kc.tot.bench.opp.pts, kp.tot.bench.opp.pts, mr.tot.bench.opp.pts, sp.tot.bench.opp.pts, zb.tot.bench.opp.pts))

# ggplot
master.lol.pts.p <- ggplot(data=master.tot.pts, aes(x=x, y=y)) +
  geom_segment(aes(x=x-0.15, xend=x-0.15, y=-0.1, yend=y), alpha=1, color="#cccccc", size=0.4) +
  geom_point((aes(x=x-0.15, y=y)), alpha=1, color="#cccccc", fill="#cccccc", shape=21, stroke=0.5, size=2.4) +
  geom_segment(inherit.aes=FALSE, data=master.tot.opp.pts, x=master.tot.opp.pts$x+0.15,
               xend=master.tot.opp.pts$x+0.15, y=-0.1, yend=master.tot.opp.pts$y,
               alpha=1, color="#cccccc", size=0.4) +
  geom_point(inherit.aes=FALSE, data=master.tot.opp.pts, x=master.tot.opp.pts$x+0.15,
             y=master.tot.opp.pts$y, alpha=1, color="#cccccc", fill="white", shape=21, stroke=0.5, size=2.4) +
  annotate("text", family="Courier", label="For", color="#33a02c", y=lol.y.for, x=0.9, size=3) +
  annotate("text", family="Courier", label="Against", color="#d01c8b", y=lol.y.agnst, x=1.6, size=3) +
  scale_x_continuous(limits=c(0.7,10.3), breaks=c(1:10), labels=teams, expand=c(0,0.1)) +
  scale_y_continuous(limits=lol.y.lims, breaks=lol.y.brks, labels=lol.y.labs, expand=c(0,0))

# CC
cc.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=0.85, xend=0.85, y=-0.1, yend=cc.tot.pts,alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=0.85, y=cc.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=1.15, xend=1.15, y=-0.1, yend=cc.tot.opp.pts,alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=1.15, y=cc.tot.opp.pts,alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(9,7,7,7,7,7,7,7,7,7), color=c("#33a02c","#cccccc","#cccccc","#cccccc","#cccccc",
                                                                      "#cccccc","#cccccc","#cccccc","#cccccc","#cccccc")))

# CS
cs.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=1.85, xend=1.85, y=-0.1, yend=cs.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=1.85, y=cs.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=2.15, xend=2.15, y=-0.1, yend=cs.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=2.15, y=cs.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,9,7,7,7,7,7,7,7,7), color=c("#cccccc","#33a02c","#cccccc","#cccccc","#cccccc",
                                                                      "#cccccc","#cccccc","#cccccc","#cccccc","#cccccc")))

# ES
es.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=2.85, xend=2.85, y=-0.1, yend=es.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=2.85, y=es.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=3.15, xend=3.15, y=-0.1, yend=es.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=3.15, y=es.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,9,7,7,7,7,7,7,7), color=c("#cccccc","#cccccc","#33a02c","#cccccc","#cccccc",
                                                                      "#cccccc","#cccccc","#cccccc","#cccccc","#cccccc")))

# JR
jr.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=3.85, xend=3.85, y=-0.1, yend=jr.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=3.85, y=jr.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=4.15, xend=4.15, y=-0.1, yend=jr.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=4.15, y=jr.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,7,9,7,7,7,7,7,7), color=c("#cccccc","#cccccc","#cccccc","#33a02c","#cccccc",
                                                                      "#cccccc","#cccccc","#cccccc","#cccccc","#cccccc")))

# JW
jw.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=4.85, xend=4.85, y=-0.1, yend=jw.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=4.85, y=jw.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=5.15, xend=5.15, y=-0.1, yend=jw.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=5.15, y=jw.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,7,7,9,7,7,7,7,7), color=c("#cccccc","#cccccc","#cccccc","#cccccc","#33a02c",
                                                                      "#cccccc","#cccccc","#cccccc","#cccccc","#cccccc")))

# KC
kc.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=5.85, xend=5.85, y=-0.1, yend=kc.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=5.85, y=kc.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=6.15, xend=6.15, y=-0.1, yend=kc.tot.opp.pts,  alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=6.15, y=kc.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,7,7,7,9,7,7,7,7), color=c("#cccccc","#cccccc","#cccccc","#cccccc","#cccccc",
                                                                      "#33a02c","#cccccc","#cccccc","#cccccc","#cccccc")))

# KP
kp.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=6.85, xend=6.85, y=-0.1, yend=kp.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=6.85, y=kp.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=7.15, xend=7.15, y=-0.1, yend=kp.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=7.15, y=kp.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,7,7,7,7,9,7,7,7), color=c("#cccccc","#cccccc","#cccccc","#cccccc","#cccccc",
                                                                      "#cccccc","#33a02c","#cccccc","#cccccc","#cccccc")))

# MR
mr.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=7.85, xend=7.85, y=-0.1, yend=mr.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=7.85, y=mr.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=8.15, xend=8.15, y=-0.1, yend=mr.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=8.15, y=mr.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,7,7,7,7,7,9,7,7), color=c("#cccccc","#cccccc","#cccccc","#cccccc","#cccccc",
                                                                      "#cccccc","#cccccc","#33a02c","#cccccc","#cccccc")))

# SP
sp.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=8.85, xend=8.85, y=-0.1, yend=sp.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=8.85, y=sp.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=9.15, xend=9.15, y=-0.1, yend=sp.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=9.15, y=sp.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,7,7,7,7,7,7,9,7), color=c("#cccccc","#cccccc","#cccccc","#cccccc","#cccccc",
                                                                      "#cccccc","#cccccc","#cccccc","#33a02c","#cccccc")))

# ZB
zb.lol.pts.p <- gg.theme(ggplot=master.lol.pts.p, axis.text.x.size=9, axis.text.y.size=9) +
  geom_segment(inherit.aes=FALSE, x=9.85, xend=9.85, y=-0.1, yend=zb.tot.pts, alpha=1, color="#33a02c", size=0.8) +
  geom_point(inherit.aes=FALSE, x=9.85, y=zb.tot.pts, alpha=1, color="#33a02c", fill="#33a02c", shape=21, stroke=1.1, size=3.3) +
  geom_segment(inherit.aes=FALSE, x=10.15, xend=10.15, y=-0.1, yend=zb.tot.opp.pts, alpha=1, color="#d01c8b", size=0.8) +
  geom_point(inherit.aes=FALSE, x=10.15, y=zb.tot.opp.pts, alpha=1, color="#d01c8b", fill="white", shape=21, stroke=1.1, size=3.3) +
  theme(axis.text.x=element_text(size=c(7,7,7,7,7,7,7,7,7,9), color=c("#cccccc","#cccccc","#cccccc","#cccccc","#cccccc",
                                                                      "#cccccc","#cccccc","#cccccc","#cccccc","#33a02c")))

# using ggpubr, arrange plots into panels
cc <- ggpubr::ggarrange(cc.line.p, cc.lol.pts.p, ncol=1, nrow=2, align="v")
cs <- ggpubr::ggarrange(cs.line.p, cs.lol.pts.p, ncol=1, nrow=2, align="v")
es <- ggpubr::ggarrange(es.line.p, es.lol.pts.p, ncol=1, nrow=2, align="v")
jr <- ggpubr::ggarrange(jr.line.p, jr.lol.pts.p, ncol=1, nrow=2, align="v")
jw <- ggpubr::ggarrange(jw.line.p, jw.lol.pts.p, ncol=1, nrow=2, align="v")
kc <- ggpubr::ggarrange(kc.line.p, kc.lol.pts.p, ncol=1, nrow=2, align="v")
kp <- ggpubr::ggarrange(kp.line.p, kp.lol.pts.p, ncol=1, nrow=2, align="v")
mr <- ggpubr::ggarrange(mr.line.p, mr.lol.pts.p, ncol=1, nrow=2, align="v")
sp <- ggpubr::ggarrange(sp.line.p, sp.lol.pts.p, ncol=1, nrow=2, align="v")
zb <- ggpubr::ggarrange(zb.line.p, zb.lol.pts.p, ncol=1, nrow=2, align="v")

# save plots
setwd("~/Desktop/fantasy/week6/")
ggsave("cc.pdf", plot=cc, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("cs.pdf", plot=cs, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("es.pdf", plot=es, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("jr.pdf", plot=jr, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("jw.pdf", plot=jw, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("kc.pdf", plot=kc, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("kp.pdf", plot=kp, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("mr.pdf", plot=mr, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("sp.pdf", plot=sp, dpi=600, width=180, height=160, units="mm", device="pdf")
ggsave("zb.pdf", plot=zb, dpi=600, width=180, height=160, units="mm", device="pdf")
save.image(file="zzWeek6_WS.Rdata")








