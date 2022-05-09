#정규분포 dnorm(x,mean=mu, sd=sigma)가 내가 알고 있는 정규분포의 모양

x<-seq(from=-3, to=3, by=0.1)
fx<-dnorm(x, mean=0, sd=1)
plot(x,fx,type="l",main="표준정규분포 확률밀도 함")
#plot(x,y,type(모양), main(표 이름))

pnorm(2500,mean=2000,sd=200)
#ㅜ(2000,200^2)에서2500이하일 확률

#qnorm(p,mean=mu,sd=sigma)
#x~N(mu,sigma^2) 일 때, pr(X<=x)=p를 만족하는 x를 구함


qnorm(0.98,mean=100,sd=15)
#lower.tail=을f 쓰면 반대가 된다. 
x<-0:6
fx<-dbinom(x,6,0.5)
plot(x,fx,type='h')
#이항분포: dbinom(x, size=n, prob=p)

#plot(x,fx,main="이항분포의 확률밀도함수",type='h')에서h는 막대 그래프



#pbinom은 '몇개 이하'일 확률을 구한것

#par(mfrow=c(1,3))은 설명과 달리 왼쪽이 행, 오른쪽이 열



p<-0.1
n<-c(10,30,50)

par(mfrow=c(3,1))
for (i in 1:3){
  x<-seq(from=0, to=n[i], by=1)
 fx<-dbinom(x,n[i],p)
 plot(x,fx,pch=16,xlim=c(-3,15), ylab='probability',
xlab="", main=paste("이항분포의 정규근사(p=",p,",n=",n[i],")"))
lines(x,fx)

y<-seq(from=-5,to=15,by=0.1)
mu<-n[i]*p
sd<-sqrt(n[i]*p*(1-p))
fy<-dnorm(y,mu,sd)
lines(y,fy,col="red")
}
#xlab=""는 안을 빈칸으로 한다는 뜻
 #pch는 점의 모양을 바꿈
 #ylab는 y측 이름
 par(mfrow=c(1,1))
 n<-10
 x.mean<-c()
 for(j in 1:200){
   x<-runif(n, min=0, max=1)
   x.mean[j]<-mean(x)
 }
 hist(x.mean,xlim=c(0,1),probability=T,main=paste("표본평균의 분포n=",n))
      
  #runif는 어떤 범위안에서 랜덤하게 표본을 뽑는것
 
 n<-c(20,30,50,100)
 par(mfrow=c(1,4))
 
 for(i in 1:4){
   x.mean<-c()
   for(j in 1:1000){
     x<-runif(n[i],min=0,max=1)
     x.mean[j]<-mean(x)}
   hist(x.mean, xlim=c(0,1),probability=T, main=paste("표본평균의 분포 n="),n[i])
 
   y<-seq(0,1,0.01)
   mu<-0.5
   sigma<-sqrt(1/12)
   fy<-dnorm(y,mu,sigma/sqrt(n[i]))
   lines(y,fy)
   }
   
 
 #여기서부터 4월 8일
 n<-10
 x.mean<-c()
 for(i in 1:200){
   x<-runif(n, min=0, max=1)
   x.mean[i]<-mean(x)
   hist(x.mean, xlim=c(0,1),probabilty=T, main=paste("표본평균의 분포 n=",n))
 }
 
 
 n<-c(10,30,50,100)
 par(mfrow=c(4,1)) # 다중 그래프창 생성
 for (i in 1:4){ # 총 4번의 서로 다른 표본의 개수로 실험
   x.mean<-c()
   for (j in 1:1000){ # 각 표본의 크기별로 1000번씩 반복
     x<-runif(n[i], 0, 1)
     x.mean[j]<-mean(x) }
   hist(x.mean, xlim=c(0,1), probability=T, main=paste("표본평균의 분포 n=",n[i]))
   y<-seq(0, 1, 0.01)
   mu<-0.5 # (0,1) 균등분포의 모평균
   sigma<-sqrt(1/12) # (0,1) 균등분포의 모표준편차
   fy<-dnorm(y, mu, sigma/sqrt(n[i]))
   lines(y, fy) } #표본평균이 근사적으로 따르는 정규 분포
 
 
 par(mfrow=c(1,1))
 bodydims<-read.csv("bodydims.csv",header=T)
 #이렇게 저장장소를 정해줘야 저장이 됨!
bodydims.f<-bodydims[bodydims$sex==0,]
bodydims.m<-bodydims[]
 
qqnorm(bodydims.f$bii.di)
qqline(bodydims.f$bii.di, col=2)
