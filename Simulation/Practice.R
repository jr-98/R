#______If__________
x<-c(10,20,6,40)#Se declara un vector de valores
if(all(x>5)){#condicional
  #Lan funcion print, imprime los oarametros indicados 
  print("All numbers are Positives and greater than 5")
  x
}else{
  print("All numbers aren't positives less 5")
}
all(x)
any(x)
all(!x)
any(!x)
#Asignacion de caracteres a un arreglo
library(dslabs) #IMporata la libreria dslabs
new_names<-nchar(murders$state)#asigna los valores de la condicion a la variable nwe_labs
ifelse(new_names>8,murders$abb,murders$state)
#si los valores (nombres) almacenados en new_names son mayores a 8 
#se escribe las siglas de los mismos, siempre y cuando ene ese estado de haya 
#cometido algun asecinato

#_________INtroduccion  a las funciones______
sum_n<- function(x){#Funcion que recibe un  parametro de cualquier tipo
  s<- sum(x)# en la variable x de almacenara la suma de los valores que la variable x le proporcione
  s#Abreviacion del metodo presentar
}
x<-1:5000#Variable a al cual se le asignaran los nuemros continuos del 1 al  5000 de forma secuancial
sum_n(x)#Se llama a la funcion definida al inicio 
#_____________Funcion de graficar___________
grafi<- function(x,y){
  plot(x+y,x-y)#Funcion para graficar
}
grafi(1:9,8:15)# se signa los valores de las variables
#Other function
#Sumar los valores porcentuales de un arreglo cuyos valores de asignaran como varaibles 
com_sum<-function(n){
  x<-1:n
  sum(x/100)
}
n<-1:n
s_n <- vector("numeric",n)
for(i in n){
  s_n[i]<-com_sum(i)
  s_n
}
com_sum