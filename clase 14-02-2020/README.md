# Necesary data for make a descriptive model
Mean, mode, standar desviation, "bigotes" box, frequency table, histogram 

# Sesgo
Los sesgos es cuando se presentan en los datos comportamientos donde los datos se presenta muy poca cantidad de ciertos valore sy demasiados de otro.

Para controlar el sesgo debe normalizarse los datos

## Puntos z, valor z
Los valores z dan información sobre la posición relativa de los valores de tendencia central, conocido tambien como valor estandarizado.

El punto de z_i puede ser interpretado como el número de desviaciones estandar a las que x_i se encuentra de la media x barra

z_i = (x_i-x barra) / s

Se menciona del valor respecto a las proporciones

* Puntos z mayores a cero corresponden a observaciones cuyo valor es mayor a la media
* Puntos z menores que cero corresponden a observaciones cuyo valor es menor que la media
* Puntos iguales a cero, el valor de la observación corresponde a la media

**El valor Z permite analizar uno a uno los datos**

# Teorema de Chebyshev
Al menos (1-1/(z^2)) de las observaciones deben encontrarse dentro de las desviaciones estandar de la media donde z es cualquier valor mayor que 1

Se cumple para z=2,3 y 4:
* Por lo menos el 75% de los datos deben estar dentro de z=2 desviaciones estandar de la media
* Por lo menos 89% de los datos deben estar dentro de z=3 desviaciones estandar de la meida
* Por lo menos 94% de los datos deben estar dentro de z=4 desviaciones estandar de la media.

Los valores que esten fuera del valor de la desviación estandar son atipicos

# Covarianza
Son modelos descriptivos que permiten mostrar si dos variables tienen relación. Medida descriptiva de la asociación entre dos variables

## Covarianza muestral:
Cuando hay muchos datos se extrae una muestra y de estos se aplica la covarianza. Depende del conjunto de datos que se tenga

S_xy = (Sum(x_i-mean(x))(y_i-mean(y)))/(n-1)

Covarianza poblacional
S_xy = (Sum(x_i-mew_x)(y_i-mew_y))/(N)


# Correlación
Es el Grado de relación que hay entre dos variables, este se puede expresar numericamente con el coeficiente de Pearson 'r'

Para datos muestrales:

r_xy = (s_xy)/(s_x*s_y)

Para datos poblacionales
-- Sigma es Desviación estandar
r_xy = (sigma_xy)/(sigma_x*sigma_y)

El R de Pearson indica que tan fuerte o debil es una correlación

* Dirección:
    * + Positiva
    * - negativa
* Fuerza:
    * - 1 Perfectamente negativa
    * + 1 Perfectamente positiva
* hline
    * 0 No hay correlación