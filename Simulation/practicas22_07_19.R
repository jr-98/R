############Sample Sunction
#permite tomar una muestra aleatoria simpel a partir de uan muestra de vectora
#sample(x,size,replace=False, prob=Null)
#X = Vector del cual se eligen los valores
#size=  enteri pootivo que undica el numeror un vector
#de elemento que se desea elegir
#replace = indica que el muestreo se hace sin reemplazo(Flase)
#prob = su puede incluiir el un vector de probabilidades.
sample(c(3,5,7),size =2, replace = FALSE)
#Usar la funcion dample() para generer 50n numeros psudoaletorios del 1 al 100
#a) SIn remplazazmiento
#b)mUESTRO con resplazamieto
#A
sample(c(1:100), size = 50, replace = FALSE)
#B
sample(c(1:100),size = 50, replace = TRUE)
##############
#SUmulando el lanzamiento de dos dados
sample(1:6,1)
# sSIMULAR ELlanzamiento de 4 dados, function)
###Sumular la suma de resultante al lanzar 4 dados
tt = sapply(1:10000, function(x){
  sum(sample(1:6,4,replace = TRUE))
})
table(tt)
barplot(table(tt))
#Simular la extraccion de extrer 3 bolas blancasy 7 negras
#sumular la extracion de una bola (Blanco o negra)
sample(c(1,0),1,prob = c(0.3,0.7))
#SUmuallr la extracion con 8 remplazo
sample(c(1,0),8, replace = TRUE, prob = c(0.3,0.7))
#################################
#3DISTRIBUCION UNIFORME DISCRETA
#FUncion sample()
#x: c(X1,X2,X3 ...Xn)
#mean(x)
#var()
#muetra()
#mean(muestra)
#var( Muesta)

#DISTRIBUCION DE PROBABILIDAD
#dbinom => proporciona la funcion de densidad
#pbinom=>Proporciona la funcion acumulada o de probailidad
#qbinom => Proporcion ala funcio de cuantiles
#rbinom +> genera valores aleatorios

#USO
#dbinom(x,size, prob, log=FALSE)
#pbinom=>(q, size,prob,lower.tail= true,log.p =FALSE)
#qbinom =>(p,size,prob,lower.tail= true,log.p =FALSE)
#rbinom +> (n,size,prob)
#Argumentos
#x, vestor de los cuartiles
#n,nuemro de observaciones por defecto es igual a a
#Calcualr la probablidad de que a  obterner cuatro caras al lanzar una monedaperfecta
#P(x=4), con X -->B(6,0.5)
dbinom(x=4, size=6,prob = 0.5)




#Clacular la probabilidad de obtener por lo menos 4 caras
pbinom(q=4, size =6, prob = 0.5)
#Calcualr el valor de X tal qeu P[X<=X] =0.89
qbinom(0.89,6,0.5)
#Supongamos que el 20% de tubos reducidos por una m'aquina son defectuosos y supongamos 
#que produce 15 tubo cada hora. Cada tubo es indepemdainte de los atros, se juzga que el
#procducto es fuera de control, cuando se producen mas dede 4 en una hora concreta. Sumular
#ek humeri de tubis defectuosis prodicdos por la maquina en cada hora. A lorgode un periodo 
#de 24 hotaeaws y determinar si el procesi esta fueta de c.ontrol en algun moemnto
tubosDefectuosos = rbinom(24,15,0.1)












