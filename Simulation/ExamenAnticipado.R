#Muestreo de chips de computadora: Supongamos que hay 100 chips de memoria en una caja, 
#de los cuales 90 son "buenos" y 10 son "malos". Retiramos cinco de los 100 chips al azar para
#actualizar una computadora.¿Cuál es la probabilidad de que las cinco fichas sean buenas?


#_________________________Método resolutivo mediante Simulación----------------------------------------------

caja<-c(1:100)#Constityen los 100 Chips que se encuentran dentro de la caja
caja
##permitira tomar 5 chips de los 100 chips que hay en la caja
# estos se tomaran de forma aleatoria

set.seed(2019)
m = 10000 # Variable que indica el loop
valores = numeric(m) # Almacena la cantidad de loops
for (i in 1:m)
{
  randomSelect = sample(caja, 5) # Extrae los 5 chips de manera aleatoria y determina si son buenos
  valores[i] = sum(randomSelect <= 90)
}
randomSelect
prob <-mean(valores == 5) #Arroja la l aprobabilidad del evento
prob

#_________________________Método convinatorio----------------------------------------------

#     F(x)=>                n!#             nCr=    ____________
#                       (n-r)!r!

buenos <- 100
malos <- 90
r<- 5

a<- choose(100,5)# Extrae 5 chips "Buenos" de la caja
a

b<- choose(90,5)# Extrae 5 chips "Malos" de la caja
b

prob <- b/a #Calcula la probabilidad de obtener 5 fichas "Buenas"
prob
#