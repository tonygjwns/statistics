ames<-read.csv("ames.csv",header=T)
saleprice<-ames$SalePrice
vsaleprice<-var(saleprice)
vsaleprice
#1.
summary(saleprice)

hist(saleprice,xlim=c(12790,755000),probability=T,main="saleprice")
#가운데의 값이 매우 큰 대칭에 비슷한 값이라고 볼 수 있다.
#수치적 요약값
# Min. 1st Qu.  Median    Mean 3rd Qu. 
#12790  129500  160000  180800  213500 
#Max. 
#755000 

#2.
sample1<-sample(saleprice,50)
mean1<-mean(sample1)
mean1

#3.
sample_mean50<-c()

for (i in 1:5000){
sample2<-sample(saleprice,50,replace=TRUE)
sample_mean50[i]<-mean(sample2)
}
hist(sample_mean50,xlim=c(120000,230000),probability=T,main="sample_mean50",breaks=50)

summary(sample_mean50)

#4.

mean50<-mean(sample_mean50)
mean50
var50<-var(sample_mean50)
var50
qqnorm(sample_mean50)
qqline(sample_mean50, col=2)
#5.
sample_mean150<-c()

for (i in 1:5000){
  sample3<-sample(saleprice,150,replace=TRUE)
  sample_mean150[i]<-mean(sample3)
}
hist(sample_mean150,xlim=c(120000,230000),probability=T,main="sample_mean150",breaks=50)

summary(sample_mean150)
var(sample_mean150)
qqnorm(sample_mean150)
qqline(sample_mean150, col=2)