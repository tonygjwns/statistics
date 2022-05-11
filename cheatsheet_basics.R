#make vector
x<-c(1,3,5,7)
#factor vector
gender<-factor(c('M','M','M','M','M','M','M','M','F','F','F','F','F','F','F','F','F','F'))


#get element
x2<-x[2]
x[-2]
#get multiple element from vector
x[c(1,3,4)]

#equivalent to list(range()) in python
seq(from=1, to=10, by=1)

#several more seq example
seq(from=1, to=15, length=10)
seq(from=1, by=2, length=10)

#only natural numbers
3:10

#repeat x y times
rep(x,y)
#also valid for vector
rep(c(1,2,3),2)

#bind vector by row
a1<-c(1,2,3,4)
a2<-c(5,6,7,8)
a3<-c(9,10,11,12)
mat<-rbind(a1,a2,a3)

#1열 3행
#for r, index starts from 1
mat[1,3]
mat[1:3,3]
# comma is used for all rows
mat[,3]

#some easy useful functions
abs(x)
sqrt(x)
round(x, digit=n) #for nth digit
log(x) # natural log
#choose(n,r): combination
choose(5,3)
#factorial(n)
cor(x,y)

#string functions
#concat strings
paste("a", "b", "c")

#also can concatenate numbers to string
paste("z=",z,"logz=",round(log(z),digit=2))



#%%는 나머지, %/%는 몫
x%%y
x%/%y

<,<=,>,>=, == , !=, |, &


#제어문: for, if else 두개가 있다.
  

for(i in 1:3){x<-i+1 ; print(x)}
if(3>5){print("yes")} else {"no"}

#random number vector. default is non-restoring
sample(x, size, replace=F)



