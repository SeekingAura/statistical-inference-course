notas<-c(7.4,7.9,4.1,8.1,6.2,7.1,7.4,6.7)
mean(notas)
sd(notas)
median(notas)
sort(notas)

# Get data from data From csv link
data_main <- read.csv("https://www.football-data.co.uk/mmz4281/1920/E0.csv")

# Show some first 6 data from dataframe
head(data_main)

# Show number of rows and cols of dataframe
dim(data_main)

# Create a new data frame with only first 24 cols from main dataframe, this case is only info about the game and not for Auctioner
data_temp <- data_main[,c(1:24)]

dim(data_temp)

# Show non repated data from colum in dataframe
levels(data_temp$HomeTeam)

# Median of col data (in this case FTHG is a column) Full Time Hometeam Goals
mean(data_temp$FTHG)

# Standar desviation
sd(data_temp$FTHG)

# Convert colum of dataframe to Array

# Comlum HomeTeam take name of HomeTeam
a_equipo <- as.array(data_temp$HomeTeam)
a_equipo
# FTHG 
a_goles <- as.array(data_temp$FTHG)
a_goles
m<-data.frame(a_equipo, a_goles)

# Margin tables

# Create table with two arrays, where in this table make a frequency table, this show the number of times that a team reach a certain number of goals
tab_local <- table(a_equipo,a_goles)
tab_local

# make a plot with arrays using first such X and second such Y, by default this plot is a "bigotes" box
# "bigotes" Box indicates a "normal" values where is the range of values, probability
plot(a_equipo, a_goles)

#
margin.table(tab_local)

# Show from table all rows with certain columns, this case show 
tab_local[,1]

# Create a margin table (tabla de frecuencia) with a summarize, this can get a "probability" over data
addmargins(tab_local)

# Probability table, second argument indicates cols to non use for analysis in this case 1 are names of teams
prop_locales <- prop.table(tab_local,1)
prop_locales

# multiply by 100 to show percentaje 0 to 100
per_locales <- prop_locales*100
per_locales

# Show keys of rows (names)
rownames(per_locales)

# Get data from first row
per_locales[1,]

# Show indexed Key (in this case number 1)
rownames(per_locales)[1]

# Make a grafic barplot where show number of games where obtain certain number of goals
chart <- barplot(tab_local[1,], main="Cantidad de goles anotados como local Arsenal 2019-2020", ylim= c(0,10), ylab="Partidos", xlab="Goles")
text(chart, tab_local[1,], pos=3, format(tab_local[1,]), xpd = TRUE, col="blue")


# Central tendency
# Taking only first row, team Arsenal
ars <- tab_local[1,]
ars

# Apply median to this row
median(ars)

# Apply mean to this row, and this info 
mean(ars)

# Find mode
valores <- table(tab_local[1,])
valores
moda<-sort(valores, decreasing=TRUE)
moda
rownames(moda)[1]

