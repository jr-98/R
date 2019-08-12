###Programcion basica#####
a<- 0
if(a!=0){
  print(1/a)
}else{
  print("NO reciprocal for 0")
}
######The state mos securyty
library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population * 100000
ind <- which.min(murder_rate)
if(murder_rate[ind]<0.5){
  print(murders$state[ind])
}else{
  print("NO state has murder rate that low")
}
  #######funcion if else########
a<- 0
###NA>>>>>>>NO avable#### 
ifelse(a>0, 1/a,NA)
a<-c(0,2,3,-4,5)
result<- ifelse(a>0, 1/a,NA)
###NA example#########
data("na_example")
no_nas<- ifelse(is.na(na_axample), 0,na_axample)
sum(is.na(no_nas))
###any() y all()
z<- c(FALSE,FALSE,TRUE)
any(z)
all(z)
any(!z)
all(!z)
##Difining functions#####
avg <-function(x){
  s<- sum(x)
  n<-length(x)
  s/n
}
x<- 1:100
identical(mean(a), avg(x))##comprueba si la funciones son identicas
##my_fuction<-unction(VARIABLE_NAME)
#PERFORN=N OPERATION IN vARIALE _NAME and calcualte Value
avg<- function(x, arithmetic = TRUE){
  n<- length(x)
  ifelse(arithmetic, sum(n)/n,prod(x)^(1/n))
}
avg(1:10, FALSE)
###bucles repetitivos
##FOR-LOOPS
#1+2+....+n => n(n+1)/2
compute_s_n<- function(n){
  x<-1:n
  sum(x)
}
####S-n 
##n=1,2,3,...,25
for(i in 1:5){
print(i)
}
m<- 25
s_n <- vector(length = m)###crea un vector vacio
for(n in 1:m){
  s_n[n]<-compute_s_n(n)
}
n<-1:m
plot(n,s_n)
head(data.frame(s_n=s_n,formula=n*(n+1)/2))
##suporponer para que una los puentos en lagrafica
lines(n,n*(n+1)/2)
##########Vectorixacion and functional
x<- 1:10
sqrt(x)
y<- 1:10
x*y

x<-1:10
s_n <- sapply(n, compute_s_n)
s_n
plot(n,s_n)
lines(n,n*(n+1)/2)
####Ejeciocio de practica de infor,e
x<- c(1,2,-3,4)
if(all(x>0)){
  print("All positives")
}else{
  print("Not all posotives")
}
#The function nchar tells you how many characters 
#long a character vector is. Write a line of code 
#that assigns to the object new_names the state 
#abbreviation when the state name is longer than 8characters.
new_names<-nchar(murders$state)
ifelse(new_names>8,murders$abb,murders$state)
#Create a function sum_n that for any given value, say n, computes
#the sum of the integers from 1 to n (inclusive). Use the function
#to determine the sum of integers from 1 to5,000.
sum_n <-function(x){
  s<- sum(x)
  s
}
x<- 1:5000
sum_n(x)
#Create a function altman_plot that takes two arguments, x and y,
#and plots the difference against thesum.
altman_plot <- function(x, y){
  plot(x + y, y - x)
}
altman_plot(1:9,8:15)
#After running the code below, 
#what is the value ofx

my_func<-function(y){
  x <- 5*y+5
  x
}
my_func(3)
#    7. Write a function compute_s_n that for any given n 
#computes the sum 𝑆"= 1%+ 2%+ 3%+4%+ ⋯ + 𝑛%. Report
# the value of the sum whenn=10.

com_s_n<-function(n){
  x<- 1:n
  sum(x/100)
}
n<-1:n
s_n<-vector("numeric",n)
for (i in n) {
  s_n[i]<- com_s_n(i)
  s_n
}
com_s_n(10)

#    8. Define an empty numerical vectors_nof size 25 usings_n <-vector("numeric",
#25)and store in the result ofS1,S2,…S25 using a for-loop
com_s_n<-function(n){
  x<- 1:n
  sum(x/100)
}
n<- 1:25
vectors_nof <- sapply(n, compute_s_n)

View(vectors_nof)
#Repeat exercise 8, but this time usemap_dbl.
install.packages("tidyverse")
install.packages("purrr")
library(purrr)
com_s_n<-function(n){
  x<- 1:n
  sum(x/100)
}
n<- 1:25
