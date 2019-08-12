#Formula para calcular la solucion de una eciacion cuadratica de la forma x2 + bx + c = 0
#variables
a <- 3
b <- 2
c <- -1
#Calculo de la solucion mediante la formula general
solution_1 <- (-b + sqrt(b^2 - 4*a*c))/(2*a)
solution_2 <- (-b - sqrt(b^2 - 4*a*c))/(2*a)

############
#VARIAVLE
# n(n + 1)/2 c=Formula para calcular lo suma de los primeros 100 numeros pares
n = 100
#Calculo de la solucion
n*(n + 1)/2

#######
#Variable
n<- 1000
x <- seq(1,n) #Sive par generar secuencias de forma aleatoria en primero muestra desde donde y el 2 hata donde se genera la secuencia 
sum(x)

########## funcion exp = exponente
log(exp(6))

########
pop <-murders$population
length(pop)
class(pop)
class(murders$state)
z <- 3==2 
#########
region <- murders$region
value <- murders$total
region <-  reorder(region, value, FUN = sum)
print(region)
#########matrices########

mat <- matrix(1:12,4,3)

mat
mat[2,3]
mat[2,]
mat[,3]

mat[,2:3]#Se una matriz unicamente con los valores de la columnas
mat[1:2,2:3]

##convertiir una matriz a data frame
as.data.frame(mat)

###VECTORES#######
#Vestore  tipo diccionaros
codes<- c(380,124,818)
codes

countrys <- c("Italy","Canada","Egypt")

  codes <- c(Italy=380, Canada=124, Egypt=818)
  codes
  class(codes)
  #Vestores tipo name
  codes<- c(380,124,818)
  countrys <- c("Italy","Canada","Egypt")
  names(codes)<- countrys
  
  ####Secuencias
  seq(1,10)
  seq(1,10,-2)
  1:10
  class(1:10)
  class(seq(1,10,0.5))
  ##################
  codes(2)
  codes[(c)(1,3)]
  codes(1,2)
  codes[c("Egipt","Italy")]
  ##coercion
  
  x<- c(1,"Canada", 3)
  x
  class(x)
  x<- 1:5
  y<- as.character(x)
  y
  as.numeric(y)
  #############Ordenamiento de vectores
  library(dslabs)
  data("murders")
  sort(murders$total)
  x= c(31,4,15,92,65)
  sort(x)
  index <- order(x)
  index
  ##Ordenar el numero de murders por estado
  murders$state[1:10]
  murders$abb[1:10]
  murders$total[1:10]
  ind = order(murders$total)
  murders$abb[ind]
  murders$state[ind]
  
  max(murders$total)#numero maroe de asecinaros
  Imax = which.max(murders$total)
  murders$state[Imax]
  
  ##operacione con vectores
  x= c(1,2,3)
  y= c(10,20,30,40,50,60,170)
x+y

murders$state[which.max(murders$population)]
murders$state[which.min(murders$population)]

pulgadas = c(15.6,62,66,70,78,73,67,73,67,76)
pulgadas*2.54
pulgadas

round(mean(pulgadas))
pulgadas -69

murders_rate = murders$total/murders$population * 100000
murders_rate
murders$state[order(murders_rate)]

ind <-murders_rate< 0.71
ind  
murders$state[ind]  
sum(ind)

west <- murders$region=="West"
safe <- murders_rate<=1
ind <- safe & west
murders$state[ind]