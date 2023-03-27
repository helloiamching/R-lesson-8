#4a

number=sample(1:6,10^6,replace = T,prob = c(1/4,1/4,1/4,1/12,1/12,1/12))
f4a <- function(k){
  for (i in 1:k) {
    answer.4a <-((-1)^i)*number[i]
  }
  return(answer.4a)
}

f4a(100)

#4b

M=1
while(sum(number[1:M])<=100){
  M=M+1
}
M

#4c
i=0
repeat{
  i=i+1
  if(sum(unique(number[1:i]))==21){break}
}
i

#5a
pmf <- function(k){
  (exp(-2)*2^k)/(factorial(k)*(1-exp(-2)))
}
pmf(2)
#5b
result<-0
for (i in 1:20) {
  result<-c(result,pmf(i))
  
}
sum(result)

#5c
i=0
c5=0
repeat{
  i=i+1
  result<-pmf(i)+c5
  c5<-result
  if(i==15){break}
}
result

#5d

while (i<=10) {
  i=i+1
  result<-pmf(i)+c5
  c5<-result
}

result






