data<-read.table("cdc.txt",header=T)
?read.table
#header를 써서 true가 되는 경우는 텍스트 파일의 앞에 제목들을 써 놓은 경우
View(data)
#v를 대문자로!

head(data)
#head는 앞 부분만 보여줌
#tail는 끝부분을 보여줌

data$weight
#$는 특정 자료를 보여줌

#예제 1

summary(data$genhlth)

#예제2
summary(data$weight)

#평균 몸무게: 169.7

#예제3
weight<-data$weight
wtdesire<-data$wtdesire


plot(weight,wtdesire,main="2016-15937",xlab='무게',ylab='wtd',type='p')
cor(weight,wtdesire)
#상관계수:[1] 0.8000521 따라서 양의 상관관계가 있고, 그래프를 보았을 때 상당히 밀접한 관계가 있는 것을 볼 수 있다.


#예제 4
wdiff<-weight-wtdesire
summary(wdiff)
hist(wdiff,main="2016-15937")

#즉 차가 거의 일정하게 weight가 wtdesire보다 15 정도 큰 것을 알 수 있다.


#예제 5
age<-data$age
par(mfrow=c(1,2))
hist(age,main="2016-15937",breaks=50)
hist(age,main="2016-15937",breaks=100)

#이번 그래프의 경우 두 경우다 왼쪽, 즉 젊은 연령층에 값이 몰려 있음을 알 수 있다.
