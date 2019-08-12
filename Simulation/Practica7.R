#_________________________________________1_____________________________________________-
#datos
#25 unit each hour
#period of 24 hours
defective<-rbinom(24,25,0.15)
defective
any(defective>5)
sum(defective>5)

defective<-rbinom(24,25,0.2)
defective
any(defective>5)
sum(defective>5)

defective<-rbinom(24,25,0.25)
defective
any(defective>5)
sum(defective>5)

defective<-rbinom(24,25,0.05)
defective
any(defective>5)

defective<-rbinom(24,25,0.1)
defective
any(defective>5)
sum(defective>5)

#_________________________________________2_____________________________________________-
#(a)
x<-rbinom(10000,20,0.3)
length(x[x<=5])/length(x)

pbinom(5,20,0.3)
#(b)
sum(x==5)/length(x)

dbinom(5,20,0.3)
#(c)
mean(x)
#(d)
var(x)
#(e)
quantile(x,probs = c(95,99,99.9999)/100)
#(f)
qbinom(0.99,20,0.3)
#(g)
qbinom(0.999999,20,0.3)
#________________________________________3______________________________________________-

t<-rbinom(n=1000,size = 18,p=0.76)
mean(t)
var(t)


#________________________________________4______________________________________________-
ranbin<-function(n,size,prob){
  cumbinom<-pbinom(0:(size-1),size,prob)
  singlenumber<-function(){
    x<-runif(1)
    N<-sum(x>cumbinom)
    N
  }
  replicate(n,singlenumber())
}
ranbin(10,4,0.5)
#######A########

size=5
prob=0.2
cumbinom<-pbinom(0:(size-1),size,prob)
cumbinom
x<-runif(1)
x>cumbinom
sum(x>cumbinom)
x
x<-runif(1)
x>cumbinom
sum(x>cumbinom)
x
x<-runif(1)
x>cumbinom
sum(x>cumbinom)
x
x<-runif(1)
x>cumbinom
sum(x>cumbinom)
x
############b########

system.time(rbinom(1000,10,0.4))

system.time(rbinom(10000,10,0.4))

system.time(rbinom(100000,10,0.4))

system.time(ranbin(1000,10,0.4))

system.time(ranbin(10000,10,0.4))

system.time(ranbin(100000,10,0.4))  

#________________________________________5______________________________________________-
#(a)
ranbin2 <- function(n, size, prob){
  singlenumber <- function(){
    x <- runif(size)
    sum(x < prob)
  }
  replicate(n, singlenumber())
}

#(b)
system.time(gcFirst = TRUE, ranbin2(n = 10000, size = 10, prob = 0.4))
system.time(gcFirst = TRUE, rbinom(n = 10000, size = 10, prob = 0.4))
system.time(gcFirst = TRUE, ranbin2(n = 10000, size = 100, prob = 0.4))
system.time(gcFirst = TRUE, rbinom(n = 10000, size = 100, prob = 0.4))
system.time(gcFirst = TRUE, ranbin2(n = 10000, size = 1000, prob = 0.4))
system.time(gcFirst = TRUE, rbinom(n = 10000, size = 1000, prob = 0.4))