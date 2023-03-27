#1
id=seq(1,50)
math.score=sample(0:100,50,replace=T)
reading.score=sample(40:100,50,replace = T)

#1.a

a1=t(array(c(id,math.score,reading.score),c(50,3)))
a11=t(array(c(math.score,reading.score),c(50,2)))
n=1:5
a1[,n]

#1.b
a1=t(matrix(c(id,math.score,reading.score),c(50,3)))
mean(reading.score)
sd(reading.score)

#1.c

n=1:50
ac1<-a1[2,n]>60
ac2<-a1[3,n]>60
ac3<-ac1==TRUE&ac2==TRUE
ac4<-which(ac3==TRUE)
ac4[1:5]

#1.D
ad0<-colSums(a11)
ad1<-sort(colSums(a11),decreasing = FALSE)
ad1[1:5]

#1.e
which(ad0==max(ad1))
#1.f
af1<-sort((math.score),decreasing = FALSE)
which(math.score==af1[1])

#1.g
g1<- sort(math.score,decreasing = TRUE)
g1[1:5]

#1.h
ah1<-which(ac3!=TRUE)
ah1[1:5]






