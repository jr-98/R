random.number = numeric(20)
random.seeb = 17218
for(j in 1:20){
  random.seeb=(172*random.seeb)%%30307
  random.number[j]=random.seeb/30307
}
random.number
###########2
random.number = numeric(20)
random.seeb = 2018
for(j in 1:20){
  random.seeb=(171*random.seeb)%%32767
  random.number[j]=random.seeb/32767
}
random.number
###########3
#a
set.seed(32078)
runif(10,min=0,max=1)
#b
set.seed(32798)
runif(10,min=3,max=7)
#c
set.seed(32798)
runif(10,min=-2,max=2)
###############4
#N= 1000
#runif
#vector Y
#set.seeb(19908)
#a
set.seed(19908)
U<-c(runif(1000))
U
#A
avarage<- sum(U)/length(U)
avarage

variance<- sum(((U-avarage)^2)/length(U))
variance

sdeviation<- sqrt(variance)
sdeviation
#B
avarage<- sum(U)/length(U)
avarage
mean(U)
variance<- sum(((U-avarage)^2)/length(U))
variance
var(U)
sdeviation<- sqrt(variance)
sdeviation
sd(U)
#c
#proportion
prop.table(table(U<0.6))
#probability 
n<- runif(U,min = 0, max = 0.6)
n1<-sample(n,1)
punif(n1)
#d
mean(1/(U+1))
#c
hist(U) 
hist(1/(U+1))
############5
A<-c(runif(10000,min=3.7,max=5.8))
A
mean(A)
var(A)
sd(A)
#######
n<-length(A)
for (i in n) {
  if (A[i]>4.0) {
    data<- data +1
  }
  i++
}
data
result<-(data/n)*10000
result
####6
#a
E[U1+U2+U3].
U1<- runif(15)
U2<- runif(15)
U3<- runif(15)
suma <-U1+U2+U3
avarage <-mean(suma)
avarage
#b
variance <-var(suma)
variance

SumVariance <- var(U1)+var(U2)+var(U3)
SumVariance
#c
raiz <- sqrt(suma)
Raizmed <- mean(raiz)
Raizmed
#####7
U1<- runif(15)
U2<- runif(15)
U3<- runif(15)
suma <-U1+U2+U3
avarage <-mean(suma)
avarage
#b
variance <-var(suma)
variance
Sumvariance <- var(U1)+var(U2)+var(U3)
Sumvariance
#c
root <- sqrt(suma)
media <- mean(root)
media