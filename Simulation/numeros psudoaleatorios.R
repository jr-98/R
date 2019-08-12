##metodo congruencial
#Xn<- 171 X(n-1)(mod 30269)
#UN = Xn/30269

random.number = numeric(50)
random.seeb = 27218
for(j in 1:50){
  random.seeb=(171*random.seeb)%%30269
  random.number[j]=random.seeb/30269
}
random.number
#####################################
#Xn<- 69069 X(n-1)(mod 2^37)
#UN = Xn/(2^37) SEMILLA 1
random.number = numeric(50)
random.seeb=1
for(i in 1:50){
 random.seeb = (69069 * random.seeb)%%(2^(37)) 
 random.number[j]=random.seeb/(2^(37)) 
}
random.number
##########################
# DIstribuciob uniforme
#FUnciones que eproporciona informacion sobre la distribbucion uniforme en el intervalo min y max
#
#dunif= proporciona la funcion de densidad
#punif = POrporciona la funcion de distribucion p (F(x))
#gunif = Proporciona la funcion de cuantiles
#runif = genera valores aleatorios
##Argumento
#x, q = vestor de cuantiles
#p: vecrore de probalbilidades
#n: numero de observaciones, Por defecto des igual a 1
#min, max : Extremos superiores e inferiores del intervalo que determiann la distribucion
#log, log.p: son valores logaritmicos: si son TRUE, las probabilidades de p sean como log(p)
#lower.tail: e es un valor logico,l si es sTRue POr defecto
# la probavilidades P[X>x]
#EJEMPLO
#U(a, B)
#runif(n,min=a, max=b)

runif(10)
runif(15,min=-1,max=2)
runif(5)
set.seed(32798)
runif(5)
#####Simulacion montecarlo para datos categoricos
beads = rep(c("red","blue",times=c(2,3)))
beads
sample(beads,1)
B= 10000
events= replicate(B,sample(beads,1))
events
#############TABULAR
tab = table(events)
tab
prop.table(tab)
#con y sin remmplazo
sample(beads,6)
set.seed(1986)
events=sample(beads,B, replace = TRUE)
prop.table(table(events))
###PRACTICA 6
###############1
random.number = numeric(20)
random.seeb = 17218
for(j in 1:20){
  random.seeb=(172*random.seeb)%%30307
  random.number[j]=random.seeb/30307
}
random.number