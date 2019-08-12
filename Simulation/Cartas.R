oros = c(Oros.1 =1,Oros.1 =1,Oros.2 =2,Oros.3 =3,Oros.4 =4,Oros.5 =5,Oros.6 =6,Oros.7 =7,Oros.10 =10,Oros.11 =11,Oros.12 =12)
copas = c(Oros.1 =1,Oros.1 =1,Copas.2 =2,Copas.3 =3,Copas.4 =4,Copas.5 =5,Copas.6 =6,Copas.7 =7,Copas.10 =10,Copas.11 =11,Copas.12 =12)
espadas = c(Espadas.1 =1,Espadas.1 =1,Espadas.2 =2,Espadas.3 =3,Espadas.4 =4,Espadas.5 =5,Espadas.6 =6,Espadas.7 =7,Espadas.10 =10,Espadas.11 =11,Espadas.12 =12)
bastos = c(Bastos.1 =1,Bastos.1 =1,Bastos.2 =2,Bastos.3 =3,Bastos.4 =4,Bastos.5 =5,Bastos.6 =6,Bastos.7 =7,Bastos.10 =10,Bastos.11 =11,Bastos.12 =12)

baraja = c(oros,copas,espadas,bastos)
names(baraja[7])
names(baraja[33])
#########################
set.seed(2019)
A1 = sample(baraja,4)
names(A1)
b = baraja[which(baraja!=A1)]
B1= sample(b,4)
names(B1)
b = b[which(!(names(b)%in% names(B1)))]
A2 = sample(b,4)
names(A2)
b = b[which(!(names(b)%in% names(A1)))]
B2 = sample(b,4)
names(B2)

juego.A1 = sum(ifelse(A1>=10,10,A1))
juego.B1 = sum(ifelse(B1>=10,10,B1))  
juego.A2 = sum(ifelse(A2>=10,10,A2))
juego.B2 = sum(ifelse(B2>=10,10,B2))

juego.df = data.frame(juego.A1 =juego.A1,
                      juego.B1=juego.B1,
                      juego.A2=juego.A2,
                      juego.B2=juego.B2)
juego.df$J = any(juego.df>=31)