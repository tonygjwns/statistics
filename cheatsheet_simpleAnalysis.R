#distribution

#normal distribution
dnorm(x,mean=mu, sd=sigma)
#number of samples
x<-seq(from=-3, to=3, by=0.1)
fx<-dnorm(x, mean=0, sd=1)
#이항분포: dbinom(x, size=n, prob=p)
x<-0:6
fx<-dbinom(x,6,0.5)
plot(x,fx,type='h')

#runif: selects some sample in some range
x<-runif(n[i],min=0,max=1)



#plot
#plot(x,y) 는 산점도
math<-c(66,64,48,46,78,60,90,50,66,70)
phy<-c(70,68,46,48,84,64,92,52,68,72)
plot(math,phy)

#plot(x,y,type(shape), main(name of plot))
plot(x,fx,type="l",main="표준정규분포 확률밀도 함")
#bar graph is type h
plot(x,fx,main="이항분포의 확률밀도함수",type='h')

#with some options
#pch is shape of dots
plot(x,fx,pch=16,xlim=c(-3,15), ylab='probability',xlab="", main=paste("이항분포의 정규근사(p=",p,",n=",n[i],")"))
lines(x,fx)


#hist
hist(score)
#freq=F는 상대도수로
hist(score,freq = F)
#breaks: 계급의 수
hist(score, breaks = 10)

#stem 줄기-잎 그림
stem(score)

#boxplot
boxplot(score)

#qqplot
qqnorm(sample)
qqline(sample)


# 다중 그래프창 생성
par(mfrow=c(4,1)) 

#table: counts the elements
table(gender)
#summary of data for all type
#mean, sd, var, median, quantile, sun. min ,max
summary(gender)







#odds
#N(2000,200^2)에서2500이하일 확률 
pnorm(2500,mean=2000,sd=200)

#x~N(mu,sigma^2), pr(X<=x)=p를 만족하는 x를 구함
qnorm(p,mean=mu,sd=sigma)
#example
qnorm(0.98,mean=100,sd=15)
#lower.tail=f을 쓰면 반대가 된다. 

#pbinom은 '몇개 이하'일 확률을 구한것


#par(mfrow=c(1,3))은 설명과 달리 왼쪽이 행, 오른쪽이 열






