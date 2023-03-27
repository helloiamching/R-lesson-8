#r 開頭：產生隨機變數，例如 rnorm。
#d 開頭：機率密度函數，例如 dnorm。
#p 開頭：累積密度函數，例如 pnorm。
#q 開頭：CDF 的反函數，例如 qnorm。



n1=1:10
matrix(n1,nrow=2,ncol=5,byrow = TRUE)

matrix2=matrix(5,nrow=4,ncol=4,byrow = TRUE)
diag(matrix2) <-1
matrix2

a3<-runif(1,max=1,min=-1)
a3
n=1:100
n3=a3*(-3)^(n-1)
mean(n3[1:50])
mean(n3[51:100])

n4=1:50
median(n3[2*n4-1])
b <- 2*n
mean(x[b[1:50]])

###
x <- runif(100,min=-50,max=50)
n5 =1:50
n6=c(0,1)
xodd=mean(x[2*n5-1])
if (xodd<0){
  y<- sample(n6,size=1)}else
  {"y <-rbinom(10,0.5)"}
y


x=sample(10:99,1)
x
y=40
if(y==x){print("u are right")
  } else if (x-y>=5){print("too small")
   } else if(x-y>=5){print("too big")
      }else{print("close")}

#1. 丟 3 顆公平的骰子，寫一 R 函式，
#印出總和 並做如下判別: 如果和大於 13 點
#，則印出「Good」，反之印出「Good luck」。
die=sample(1:6,size=3)
if(die[1]+die[2]+die[3]>13){print("Good")
  }else{"Good luck"}

##2. 有一 50 筆課業成績資料如下
#score <- sample(0:100, 50, replace = TRUE)
#“開根號再乘以 10”是成績調分方式，請寫一函式，
#輸入為全班學生課業之成績，回傳:
#(1) 分數調整前被當學生之比例(取名為 raw)
#(2) 分數調整前最高之成績(max.raw)
#(3) 分數調整後被當學生之比例(fail.per) (4) 分數調整後最高之成績(max.curved)

score <- sample(0:100, 50, replace = TRUE)
scorechange=score^(1/2)*10
failscore2=scorechange<60
failscore=score<60
##1
raw=sum(failscore)/50
##2
max.row=max(score)
##3
fail.per=sum(failscore2)/50
##4
max.curved=max(scorechange)

raw
max.row
fail.per
max.curved

#3
n=1:1000
sum(((-1)^(n+1))/(2*n-1))
#4
#某班某科原始成績如下:
#orig.score <- sample(0:100, 55, replace = TRUE)
#至於調分規則有以下三種
#A. 維持原始分數不調分，但高於 55 分，低於 60 分者，加至 60 分及格。 B.「開根號再乘以 10」。
#C. 調成學期總成績最後之平均為 65 分，但高於 100 分者以 100 計。
#試寫一 R 函式(假設命名為 final.score)，輸出每位同學上述三種調分後的成績結 果
# 請計算出 final.score(orig.score), 並儲存為 grade(是一個 55 乘 3 的矩陣)
# 請用 grade 為這 55 位學生計算出他們調分後最優的分數
# 請用 grade 為這 55 位學生計算出他們調分後最差的分數
# 請用 grade 為這 55 位學生標示出哪個調分方式對他們最有利

orig.score <- sample(0:100, 55, replace = TRUE)
n=1:55
rulea=ifelse(orig.score>55&orig.score<60,60,orig.score)
rulea
ruleb = (orig.score^(1/2))*10
ruleb
orig.score2 <- 65/mean(orig.score)*orig.score
rulec = ifelse(orig.score2<100,orig.score2,100)
final.score <-rbind(rulea,ruleb,rulec)
best <- max.col(final.score)

#Heron'sformula
f <-function(a,b,c){
  s = (a+b+c)/2
  A=(s*(s-a)*(s-b)*(s-c))^(1/2)
  return(A)
}
f(7,8,9)

#homework6
#1
a = (1:5)^2
b = (2:6)^2
c = (3:7)^2
rbind(a,b,c)
matrix(c(a,b,c),nrow=3,ncol = 5,byrow=TRUE)

##2
n=0:99
nr=1:(100-n)
m<-matrix(nr,nrow=10,ncol = 10,byrow=TRUE)
m[lower.tri(m)]<-0
m

#2
a=3
for (i in 1:100) {
  a=a^(1/2)
  print(a)
}

#4

number = sample(0:100, 10^3, replace = T)
even=number%%2==0
evenplace <-which(even==TRUE)
evenplace[100]

#hw7
#1
n=100
straw<-function(n){
  for (n in 1:n) {
    while(n<2){
    sample(1:42,6,replace = FALSE)
      }
  }
}
straw(2)

#2
cat(x,sep=" + ",fill=TRUE)
for (i in 1:10) {
  for (j in 1:10) {
    cat(i,"*",j,"=",i*j,"\n",sep="",fill=TRUE)
  }
}

#3
g4 = function(p){
  x <-1
  y<- rbinom(1,1,prob = p)
  while(y==0){
    x = x+1
    y<- rbinom(1,1,prob = p)
  }
  return(x)
}

f3 = function(n){
  i=0
  repeat{
    sn=(i+1)^1.1
    if(sn<=n){break}
    }
  return(sn)
  }
f3(10)



#




f2=function(n){
  x=0
  for (k in 1:n) {
    x=x+log(k)
  }
  y=exp(x)
  return(y)
}































































