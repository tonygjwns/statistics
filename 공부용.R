//범주형 자료는 factor


gender<-factor(c('M','M','M','M','M','M','M','M','F','F','F','F','F','F','F','F','F','F'))
#factor는 문자를 넣고자 할 때 써야함
score<-c(98,90,96,54,43,87,88,90,94,92,81,79,85,91,79,88,89,83)

hist(score)
#hist는 히스토그램
hist(score,freq = F)
#freq=F는 상대도수로
hist(score, breaks = 10)
#breaks: 계급의 수
stem(score)
#stem: 줄기 잎 그림, 근데 54점이 안 보이는 것은 지금 함수가 이상한 듯. 
stem(score,scale=2)
#지금 함수가 이상해서 이렇게 처리해준것
boxplot(score)

table(gender)
#table함수는 개수를 세는 것
summary(gender)
#summary는 모든 데이터에 대해서 결과를 알려줌
summary(score)
#summary는 데이터의 전반적인 정보들을 알려줌!

#mean은 분산, sd는 표준편차, var는 분산, median은 중위수, quantile는 사분위 값
#sum은 합, min,max는 최소, 최대


math<-c(66,64,48,46,78,60,90,50,66,70)
phy<-c(70,68,46,48,84,64,92,52,68,72)
plot(math,phy)
#plot 는 산점도를 그려줌
#이때 plot(x,y,main="",sub="",xlim=c(a,b), ylab="",type="")
#x는 x측 변수 y는 y축 변수 main은 그래프 제목, sub는 그래프 아래쪽 제목
#xlim,ylim 좌표의 번위 지정
#xlab,ylab는 축 제목
#type는 p:점 l:선 c:점선 n 관측치 없이

plot(math,phy,main='score',xlab='M',ylab = 'P', type='p',xlim=c(0,100))
#col=''에다가 영어로 색도 넣을 수 있음

