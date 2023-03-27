x=sample(0:5,1)
y=5*(x<2)+0*(x==2)+(-3)*(x<2)
#2.a
#當x小於二時，y等於5x,當x等於二時，y等於0，當x大於二時，y等於-3*x
##########wrong assumption
#2.b
x=sample(0:5,1)
if(x<2){5*x}else if(x==2){0*x}else((-3)*x)

#3.a
game <-function(p){
  x = 0
  c=0
  repeat{
    x = x+1
    y = rbinom(1,1,p)
    if(y==1){c=c+1}
    if(c==2){break}
  }
  return(x)
}
game(0.005)

#3.b
output<-c(NA)
for (i in 1:500) {
  output[i] <-game(0.005)
}

#3.c

mean(output)
(sd(output))^2










