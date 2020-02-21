# https://www.football-data.co.uk
find <- read.csv("https://www.football-data.co.uk/mmz4281/1920/E0.csv")
head(find)
dim(find)
datos <- find[,c(1:24)]
levels(datos$HomeTeam)

# Promedio de goles de los goles de local
mean(datos$FTHG)

# Promedio de los equipos goles de local de visitante
mean(datos$FTAG)

# Desviación estandar de los goles de local
sd(datos$FTHG)

# Desviación estandar de los goles de visitante
sd(datos$FTAG)

