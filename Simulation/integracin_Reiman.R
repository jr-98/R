#pnorm
estandard = pnorm(1) - pnorm(0)
#INtegracion de Riemann utiizando R 
#Solucion analitica
set.seed(12)
m = 500000 #numero de rectangulo, miestras mayor se el numeri de rectangulos mayor
#Exactitud y se reduce el error
a = 0 #
b = 1
w = (b - a) / m             #ancho del rectangulo, valor max - valor min / entre el nuemor de rectangulos\
g = seq(a + w/2, b - w/2, length = m)#el punto medio de caaa rectangulo o valore estandarizados de Z
const = 1/sqrt(2*pi)
h = const*exp(-g^2/2)
riemann = sum(w*h)
riemann
errorReiman = (estandard - riemann)/(estandard*100)
errorReiman

#Monte carlo Integration///Una simulación de Monte Carlo es aquella que utiliza la generación de 
#variables aleatorias para modelar la incertidumbre en un sistema.

set.seeb(12)# para que los valores no varien 
m = 500000 #numeros o puntos aleatorios
a = 0
b = 1 #valores minimos y maximos
w = (b - a) / m # anchura
u = a + (b - a) * runif(m) #Puntos aleatorios, se multiplica 
                           #los valores minimos y maximos para establecer
                           #el rango o intervalo que sera multiplicado por 
                           #el valor a;eatorio arrojafo por la funcion runif 
h = dnorm(u) #Alturas calculadar utilizando la funcion de densidad
MonteC = sum(w*h)
MonteC
errorMC = (estandard - MonteC)/(estandard*100)
errorMC

#Metodo de aceptacion y rechazo
set.seed(12)
m = 500000
u = runif(m,0,1)
h = runif(m,0,0.4)
frac.acc = mean(h < dnorm(u))#FUncion de densidad para las valores en x
AE= 0.4*frac.acc #se multiplica por 0.4 porque se escuentra el area de un solo rectangulo, no como lo hicimos en los metodos 
            #anteriores.
AE
errorAE = (estandard - AE)/(estandard*100)
errorAE
#En todos los casos anteriores se necesita el calculo de la funcion de densidad, ahora aotro enfoque

##Ramdom Sampling Method
set.seeb(1212)
m = 500000 #En este caso no son rectangulos sino observaciones
a = 0
b = 1 #Puntos minimos y maximos
z = rnorm(m)#numeros aleatorios de un distribucion de probabilidad estandard
            #m observaciones aleatorias de distribucion
SM = mean(z > a & z <= b) #proporcio de observaciones en a y b 
SM
errorSM = (estandard - SM)/(estandard*100)
errorSM

#The low of large NUmbers
set.seed(1212)
m = 10000 #nuemro de lanzamientos de la moneda
n = 1:m # vector 1, 2,3 ... m y especificara el nuemro de lanzamientos
#Simular y plotear
#Numero de caras al realizar un los lanzamientos
h = rbinom(m,1,1/2) #en un vector en dode h  =0  o 1, con una probabilidad de 1/2
y = cumsum(h) / n # verctor que podee el numero de caras
#!!!!a plotear
plot(n, y, type = "l", ylim = c(0,1))
#verificar
show = cbind(n, h, y) # matriz de 3 vectores como columnas
show[20:50, ] #imprime lso primeros 10 filas
show[(m-4):m, ]#imprime las ultimas 5 filas

##
#The Rt distibution
set.seed(1212)
m = 10000 #nuemro de lanzamientos de la moneda
n = 1:m # vector 1, 2,3 ... m y especificara el nuemro de lanzamientos
#Simular y plotear
#Numero de caras al realizar un los lanzamientos
h = rt(m,1)#en un vector en dode h  =0  o 1, con una probabilidad de 1/2
y = cumsum(h) / n # verctor que podee el numero de caras
#!!!!a plotear
plot(n, y, type = "l")
