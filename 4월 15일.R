ames<-read.csv("ames.csv",header=T)
ames
area<-ames$Gr.Liv.Area
#예제1
mean(area)
#평균 1499.69
length(area)
variation<-var(area)*(length(area)-1)/length(area)
variation
#분산 255452

#예제2
sample1<-sample(area,60,replace=F)
mean(sample1)
#값:1406.467

#예제3
alpha<-0.05
qnorm(alpha/2)
upper<-mean(sample1)-qnorm(alpha/2)*sqrt(variation/60)
lower<-mean(sample1)+qnorm(alpha/2)*sqrt(variation/60)
sectionsize<-upper-lower
sectionsize
#구간 길이: 255.7744
#이때 n 은 표본크기

if(mean(area)<upper & mean(area)>lower) {print("T")}else{print("F")}
#포함됨

#예제4
pop.mean<-mean(area)
upper<-c()
lower<-c()
for(i in 1: 50){
 
  samplei<-sample(area,60,replace=F)
  upper[i]<-mean(samplei)-qnorm(alpha/2)*sqrt(variation/60)
  lower[i]<-mean(samplei)+qnorm(alpha/2)*sqrt(variation/60)
  
}


plot_ci <- function(lo, hi, m) {
  par(mar=c(2, 1, 1, 1), mgp=c(2.7, 0.7, 0))
  k <- length(lo)
  ci.max <- max(rowSums(matrix(c(-1 * lo, hi), ncol=2)))
  xR <- m + ci.max * c(-1, 1)
  yR <- c(0, 41 * k / 40)
  plot(xR, yR, type='n', xlab='', ylab='', axes=FALSE)
  abline(v=m, lty=2, col='#00000088')
  axis(1, at=m, paste("mu = ", round(m, 4)), cex.axis=1.15)
  for(i in 1:k) {
    x <- mean(c(hi[i], lo[i]))
    ci <- c(lo[i], hi[i])
    if (lo[i]>m | m>hi[i]) {
      col <- "#F05133"
      points(x, i, cex=1.4, col=col)
      lines(ci, rep(i, 2), col=col, lwd=5)
    }
    col <- 1
    points(x, i, pch=20, cex=1.2, col=col)
    lines(ci, rep(i, 2), col=col)
  }
}
plot_ci(lower, upper, pop.mean)
