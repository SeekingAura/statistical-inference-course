# Get data from data From csv link
data_main <- read.csv("https://www.football-data.co.uk/mmz4281/1920/E0.csv")


data_temp <- data_main[,c(1:24)]

# Comlum HomeTeam take name of HomeTeam
a_equipo <- as.array(data_temp$HomeTeam)

# Get home goals
a_homeGoals <- as.array(data_temp$FTHG)
m_goals<-data.frame(a_equipo, a_homeGoals)

# Get HC
a_homeCorners <- as.array(data_temp$HC)
m_homeCorners<-data.frame(a_equipo, a_homeCorners)

# Tabla de probabilidades
tab_homeGoals <- table(a_equipo,a_homeGoals)
tab_homeGoals

tab_homeCorners <- table(a_equipo,a_homeCorners)
tab_homeCorners

# Grap with "bigotes" Box
plot(a_equipo,a_homeGoals)

plot(a_equipo,a_homeCorners)

# Margin table
addmargins(tab_homeGoals)

addmargins(tab_homeCorners)

# Get probabilities
## For home Goals
prop_homeGoals <- prop.table(tab_homeGoals,1)
prop_homeGoals

per_homeGoals <- prop_homeGoals*100
per_homeGoals

# For Home corners
prop_homeCorners <- prop.table(tab_homeCorners,1)
prop_homeCorners

per_homeCorners <- prop_homeCorners*100
per_homeCorners

# Find mode
valores <- table(per_homeCorners[1,])
valores
moda<-sort(valores, decreasing=TRUE)
moda
rownames(moda)[1]

# Make a grafic barplot where show number of games where obtain certain number of goals
chart <- barplot(tab_homeGoals[1,], main="Cantidad de goles anotados como local Arsenal 2019-2020", ylim= c(0,10), ylab="Partidos", xlab="Goles")
text(chart, tab_homeGoals[1,], pos=3, format(tab_homeGoals[1,]), xpd = TRUE, col="blue")

# Make a grafic barplot where show number of games where obtain certain number of Corners
chart <- barplot(per_homeCorners[1,], main="Cantidad de Tiros de esquina de local Arsenal 2019-2020", ylim= c(0,10), ylab="Partidos", xlab="Tiros de esquina")
text(chart, per_homeCorners[1,], pos=3, format(per_homeCorners[1,]), xpd = TRUE, col="blue")

