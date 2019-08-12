x<-c(1,2,3,4,5)
min(x) #devuelve l valor menor del vector

mean(x)# devuelve la ?
median(x)# Devuelve la media
var(x)# devuelce la varianza
prod(x)# El producto de todas los valores del vector
cumprod(x)# devuelve un vectror que contiene la multiplicacion sicesiva de sus terminos
quantile(x)# Devuelve los cuartiles y sus valores
y<-c(5,6,7,8,9)
cov(x,y) # devulve la covarianza de dos vectores
cor(x,y) #Devuelve la correlacion entere los vectores ingresados

#operaciones condicionales de vectores
x<=c(15,20,14,7,8,2,15,2,15,15,2,16,28)

x=11:20
x
x==15
x<15
x>15
x<=15
x>=15
x!=15
sum(x==15)
sum(x==15)
sum(x>15)
sum (x!=15)
#Calcular la media de un vestor y el numero de valores que estan por debajo de la media y la mediana
x<-c(1,5,7,9,3,5,6,1,4,7,5,6,9,8,6,2,6,1,3)
mean(x)
median(x)
sum(x< mean(x))
sum(x<median(x))
length(x)
x==median(x)

z=1:5 
z[c(TRUE,FALSE,TRUE,FALSE,TRUE)]
z=.7
z[c(TRUE,FALSE,TRUE,FALSE,TRUE)]
x=runif(10)
x
x[x<0.2]
x[x<0.4]
#conta
x[(x<0.2)|(x>0.8)]# si se reperesenta en un grafico se onservara que ciumple las caracteristicas de una
#curva normar, el la auci'on se sta tomamando el valor de las dos colas
sum((x<0.2)|(x>0.8))
#sumar
sum(x[(x<0.2)|(x>0.8)])

#whitch ===> detectaun vlaor numerico
which((x>0.2)&(x<0.6))
#####Dugrama de barras###########
x=c(1,1,1,1,2,2,3,3,3,5,6,6,7,7,7)
#table+++. tabula los datos
table(x)
barplot(table(x))  
##histograma 
x=runif(100)
hist(x)
#escartterplots o diagramas de dispersion, requieres 2 variable con datos
#
##QQ-PLOT
#nuemro aleatorisa que riguen una distribuion normal
x=rnorm(1000)
y=rnorm(1000)
qqplot(x,y,main = "X e y con la mimsa distrivubion")
#distuc=buion uniforme
a = rnorm(1000, mean =3, sd=2)
qqplot(x,a,main="xN(0,1), b(t)")
##Generar un serie fibonaci en con un vector unicializado en 0
n<-1:12
x<-vector("numeric",n)
f1 <- 1
f2 <- 0
fn<- 0
for (i in n) {
  f1 <- f1 + f2
  f2 <- fn
  fn<- f1
  x[i]<- f1
}
print(x)
# congruelvial multiplicativo
#Xn= 171 X(n-1)(mod 30269)
#UN =Xn/30269
#Semilla = 27218
ramdom.namber<- vector("numeric",50)
for(j in 1:50){
  
}