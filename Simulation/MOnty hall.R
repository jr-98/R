#montecarlo
B=10000
stick = replicate(B,{
  doors =as.character(1:3)
  prize = sample(c("car","goat","goat"))
  price_door = doors[prize=="car"]
  my_pick = sample(doors,1)
  show = sample(doors[!doors %in% c(my_pick, price_door)],1)
  stick = my_pick
  stick = price_door
})
mean(stick)
####cambio de puerta





























































