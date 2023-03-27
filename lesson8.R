#next
#break
#repeat


#Exercise A (next)
#if satisfy condition 1 ,
#then jump over next condition into next for loop
# Illustrate
x <- seq(-0.9, 0.9, by=0.1) 
n <- length(x)
ans <- rep(0, n)

for (i  in 1:n) {
  if(x[i]<0){ans[i] <- x[i]
  next}
  ans[i] <- sqrt(x[i])
}
#Exercise B (break)

y <- seq(-0.9, 0.9, by=0.1) 
n <- length(y)
ans <- rep(0, n)
for(i in 1:n){
  if (y[i]<0){break}
  ans[i] <- sqrt(y[i])
}
ans

y <- seq(0.9, -0.9, by=-0.1) 
n <- length(y)
ans <- rep(0, n)
for(i in 1:n){
  if (y[i]<0){break}
  ans[i] <- sqrt(y[i])
}
ans

#Exercise C (repeat)
#執行工作B,直到條件A為TRUE時停止執行

#EX:一直丟銅板直到出現正面
x = 0
repeat{
  x = x+1
  y = rbinom(1,1,0.05)
  if(y==1){break}
}
x
#Exercise D
# Let𝑎1 = 2,a𝑛+1 = (an)^(1/2) for𝑛 = 1,2,... 
# Find 𝑎10 by using while/repeat

#using while
a = 2
n=1
while (n<10) {
  n = n+1
  a = a^(1/2)
}
return(a)

#repeat
a = 2
n=1
repeat{
  n = n+1
  a = a^(1/2)
  if(n==10){break}
}
return(a)

#Exercise E
# calculate the positive root of x^2 -2 =0
# stop while root[n]-root[n-1]<0.001

x=1
repeat{
  n = n+1
  xbefore = x
  x = x-(x^2-2)/(2^x)
  if(x-xbefore<0.001){break}
}
























