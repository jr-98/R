####Teoria de COlas######
#Timepo medio de poermanecia en ele sistema, esta dado por W = 
#El tiempo medio de permanencia en la cola esta dado por Wq
#EL munero medio de clientes en el sistema L
#Numero medio de clientes en la cola (w-q)
#El timpo medio de llegadas al sistema (Lamda)
#Tiempo medio de servico (1/u)

##Simulacion  de un modelo M/M/1
##Vaos a simular lo  tiempos de lelgada la sistema, tenienso en cuenya que el tiempo entre llegadas consecutivas 
##seguira una distribucion exp(lamda), lso tiempos de salida dependeran del tiempo de entrada al 
##servicio, el sul se distribuye medante una distribucion exponencial exp(u)
##para determinar lso tiempos de entrada el servidor mantendra un registro de nemeros
##de clientes en al cola

llegadas = rep(0,1000)
x = rexp(1000,1)
x
llegadas = cumsum(x)           # tiempo medio de permancecia en el sistema, medua de 1 x minuto
llegadas
servicio = rexp(1000,2)       #El servidor atiende las peticiones con una media de dos por minuto
salida = rep(0,1000)
tiempo = rep(0,1000)

salida[1]= llegadas[1] + servicio[1]

for(i in 2:1000){
  if(llegadas[i]>salida[i-1]){#si no hay clientes en al cola
    salida[i]=llegadas[i]+servicio[i] #atender inmediatamente
  }else{
    salida[i]= salida[i-1]+servicio[i]#esperar a que el sistema procese todas las peticiones
  }
}
tiempo=salida -llegadas #tiempo medio de permanencia en el sistema

mean(tiempo)

##Simulacion de un modelo M/M/3
##Vamos a considerar para cada servidor un vestor enel que vamos
##almacenando en lo que queda libre, lo que permite entonces atender
##al siguiente cliente, las llegadas siguen una distribuicon de Pioson
## con lamda =2, los tiempos de servicio una exponencial cin u=1, y se disponde de 3 serevisores

llegada = rep(0,1000)
x = rexp(1000,2)
llegada = cumsum(x) #tiempo de llegadas de cliente a al sitema
servicio = rep(0,1000)
salida = rep(0,1000)
tiempo =  rep(0,100)
t = rep(0,3) #MOmento en el que quedan libres los servidores
serv = rep(0,1000) #almacenar el servisor usado por cada cliente

salida = llegada[1]+servicio[1]
serv[1] = 1
t[1] = salida[1]

for(i in 2:1000){
  if(llegada[i] > t[1]){#Se comprueba si algun servidor esta libre
    salida[i] = llegada[i] + servicio[i]
    serv[i] = 1 #Actualizamos el uso del servidory los tiempos en los que queda libre
    t[1]= salida[i]
  }else if(llegada[i]>t [2]){
    salida[i] = llegada[i] + servicio[i]
    serv[i] = 2
    t[2]= salida[i]
  }else if(llegada[i]>t[3]){
    salida[i] = llegada[i] + servicio[i]
    serv[i] = 3
    t[3]= salida[i]
  }else{
    z = which.min(t) #Buscar el servisor que primero quede libre, la funcio que se eta utilizando arroja el indice
    serv[i] = z
    salida[i]=t[z]+servicio[i]
    t[z] = salida[i]
  }
}
    tiempo = salida + llegada
    mean(tiempo)
  
    
  ##Simulacion de un modelo M/M/1/k
  #Para simularlo,  debemos comparar si la llegada del individupp i-enesimo es posterior a las salida 
    # del del individuo i - k {loq ue garantiza que hay algun hueco libre en el sistema}
    # de no ser asi debemos cambiar el tiempo registrado de llegada al momento en el que un hueco este libre.
    #Las llegadas siguen un proceso de Piosson com lamda = 1
    #los tiempos de servcio con una exponencial cin u = 2
    #Suponer K = 3 (Capacidad para tres individuos, uno en servico y dos en cola)
    
    llegadas = rep(0,1000)
    x = rexp(1000,1) 
    llegadas = cumsum(x)
    servicio = rexp(1000,2)
    salida = rep(0,1000)
    tiempo = rep(0,1000)
    salida[1] = llegadas[1] + servicio[1]
    
    for(i in 2:3){
      if(llegadas[i]>salida[i-1]){
        salida[i]=llegadas[i]+servicio[i]
      }else{
        salida[i] = salida[i-1]+servicio[i]
      }
    }
    for(i in 4:1000){
      if(llegadas[i]<salida[i-3]){
        llegadas[i] = salida[i-3]
        salida[i] = salida[i-1]+servicio[i]
      }else if(llegadas[i]>salida[i-1]){
        salida[i] = llegadas[i] + servicio[i]
      }else{
        salida[i] = salida[i-1]+servicio[i]
      }
    }
    tiempo = salida + llegadas
    mean(tiempo)
    