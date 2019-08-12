x<-c(2,5,8,9,8,5,5,5,4,2,78)
length(x)
mean(x)
sum(x)
sum(x)/length(x)
median(x)
sort(x)
y<-sort(x)
###tabla de frecuencias
table(x)
max(x)
min(x)
max(x)-min(x)
#Varianza
x-mean(x)
(x-mean(x))^2
var <- sum((x-mean(x))^2)/length(x)
var
sqrt(var)
##
x <- c(3,3,5,8,10,7,4,6,8,10)
x
y<-c(15,45,40,35,33,30,27,22,16)
y
z<- rep((c("A","B")),c(5,5))
z
df<- data.frame(y,x,z)
df
plot(x,y)

plot(df$x,df$y)