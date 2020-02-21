# Modulo
28%%6

# Asignar valores
x <- 42
print("some")
sprintf("Current working dir: %s", x)
y <- 23

# Sumar var
x+y

xy <- x+y

# Tipos de datos
n1 <- 3.4; n1
n2 <- "ejemplo"
n3 <- TRUE

# ver variables ls()
ls()

# eliminar
rm(n1, n2, n3)

# ver tipo de dato es: class() como type en python
class(n1)
class(n2)
class(n3)



# Conversion de tipos (casting):
a<-6
as.character(a)
a <- as.character(a)
a
s_n1 <- as.character(n1)
s_n1
n2<-"3"
n_n2 <- as.numeric(n2)
n_n2

class(n1);n1
is.character(n1)
is.numeric(n2)
is.character(s_n1)


# Arreglos
valores <- c(4,7,9)
nombres <- c("ana", "juan", "luisa")

valores
valores[1]
nombres
nombres[c(2,3)]

# Comparación
# >, <, >=, <=, ==, !=
valores
valores > 5
mayores_a5 <- valores > 5
mayores_a5

# mostrar los mayores 
valores[mayores_a5]
valores[valores>5]

# Hacer operaciones a solo los mayores a 5
valores[mayores_a5] + 4

# Matrices, 1:20 es crear una lista de 1 hasta 20 [1,2,3,4,5..., 20]
m1 <- matrix(1:20, byrow=TRUE, nrow=5, ncol=4)
m1
m2 <- matrix(1:20, byrow=FALSE, nrow=5, ncol=4)
m2
m3 <- matrix(1:20, byrow=FALSE, nrow=4, ncol=4)
m3
m4 <- matrix(1:10, byrow=FALSE, nrow=5, ncol=4)
m4

m1
m1[1,3]
m1[1,]
m1[,3]

# Factores
# Almacena variables discretas, a diferencia de las continuas no poseen
# valor limitado de categorias mientras que el continio tiene infinito numero de categorias

estado_estudiante <- c("estudiante", "no estudiante", "estudiante", "no estudiante")
estado_estudiante
estado_estudiante <- factor(estado_estudiante)
estado_estudiante

# cat_estudiante
levels(estado_estudiante)

#Datos precargados
mtcars

# Inspeccion de registros
head(mtcars) # Muestra los primeros elementos (solo unos pocos)
tail(mtcars) # Muestra los ultimos elementos (solo unos pocos)
dim(mtcars) # Muestra la cnatidad de filas y columnas que tiene
str(mtcars) # Muestra las Keys del dataFrame y algunos de los datos que contiene

# Dataframes
planetas <- c("Mercurio", "Venus", "Tierra", "Marte", "Jupiter", "Saturno", "Urano", "Neptuno")
tipo <- c("solido", "solido", "solido", "solido", "gas", "gas", "gas", "gas")
diametro <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotacion <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
anillos <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

planetas_df <- data.frame(planetas, tipo, diametro, rotacion, anillos)
planetas_df

# Seleccionar valor de la primera fila y 2a y 3a columna
planetas_df[1, c(2,3)]


# Ver diametros

planetas_df$planetas
planetas_df$diametro
planetas_df$anillos

mean(planetas_df$diametro)

sd(planetas_df$diametro)



