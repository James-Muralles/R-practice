set.seed(65)
runif(n = 10,min = 3, max = 6)

set.seed(65)
runif(3)

x <- c(4,5,6)
y = c(4,5.2,76)
a  = 6:10

ls()
 rm("myfirstobject")

 sqrt(sum(y))
sum(y) 
sqrt(x)
x;x[1]
newObj = x<5; newObj
x

plot(newObj)

plot(seq(4, length = 4, by =.3))


ls()

myObj = 1:10; myObj
myObj = c(1,2,3,4,5,6,7,8,9,10); myObj
myObj = (seq(1,10)); myObj


sum(myObj)
b = c(4,7,45)
paste("R is great",b, "and I will love it"); 

x = rep(1:3, length =31);x
x[7]

myfirstfn = function(x) {
  x+x
}
 
myfirstfn(5)

mysecondfn = function(z,t){
  value = z*3
  value = value*t
  print(value)
}



mysecondfn(5,9)
27*5

for (i in 1:15){print(i)}

Primvec = function(n){
if(n>=2){
  s = seq(2,n)
  p=c()
  for (i in s){
    if(any(s==i)){
    p=c(p,i)
    s = c(s[(s%%i) !=0],i)
  }}
  return (p)}
  else {
  stop("Input at least 2")
}}
Primvec(15)

Evens = function(n) {
  if (n%%2 == 0){
  return (TRUE)
  }else{
   paste("this answer is: ", (FALSE), sep="")
  }
}

Evens(13)

head(airmiles)
summary(airmiles)
 plot(mtcars)
hist(airmiles)
head(mtcars)
sum(mtcars$wt)
attach(mtcars)
sum(wt)
detach(mtcars)
sum(wt)
mtcars[Primvec(10),6]

View(mtcars)

hi = `afspec.pt.testjimmy.template.(1)`
heck = "afspec pt testjimmy template (1).csv"
attach(hi)
detach(hi)

numbers= scan()
characters=scan(what = "character")
view(characters)
characters                
 numbers                

 
 mydata = fread(heck)

 View(mydata) 

 df = fread("1	 China[b]	1,404,963,200	18.0%	21 Oct 2020	National population clock[3]
2	 India[c]	1,368,669,326	17.5%	21 Oct 2020	National population clock[4]
3	 United States[d]	330,510,599	4.23%	21 Oct 2020	National population clock[5]
4	 Indonesia	269,603,400	3.45%	1 Jul 2020	National annual projection[6]
5	 Pakistan[e]	220,892,331	2.82%	1 Jul 2020	UN Projection[2]
6	 Brazil	212,228,139	2.71%	21 Oct 2020	National population clock[7]
7	 Nigeria	206,139,587	2.64%	1 Jul 2020	UN Projection[2]
8	 Bangladesh	169,508,372	2.17%	21 Oct 2020	National population clock[8]
9	 Russia[f]	146,748,590	1.88%	1 Jan 2020	National annual estimate[9]
10	 Mexico	127,792,286	1.63%	1 Jul 2020	National annual projection[10]",col.names=c("
Rank","Country
(or dependent territory)",	"Population",	"% of world",	"Date","Source
(official or UN)"))
 
 df



View(df)

x = 5:7
x
y = 8:10
plot(x,y)

plot(lynx)

plot(lynx, main="Lynx Trappings", col="red", col.main=52, cex.main=1.5)

plot(lynx, ylab="Lynx Trappings", xlab="", las=2)

par(mfrow=c(2,2), col.axis="red")

plot(1:8, las=0, ylab="ylabs", xlab="xlab", main="LAS = 0")
plot(1:8, las=1, ylab="ylabs", xlab="xlab", main="LAS = 1")
plot(1:8, las=2, ylab="ylabs", xlab="xlab", main="LAS = 2")
plot(1:8, las=3, ylab="ylabs", xlab="xlab", main="LAS = 3")


colors()
?pch

x=2:4
plot(x, pch="c")
plot(x, pch=13)

par(mfrow=c(1,1), col.axis="black")

library(plotrix)

plot(1:7, ylab="", main="Line Types lty 0:6", xlab="lty 0:6")
ablineclip(v=1, lty=1, col="sienna2", lwd=2)
ablineclip(v=2, lty=2, col="sienna2", lwd=2)
ablineclip(v=3, lty=3, col="sienna2", lwd=2)
ablineclip(v=4, lty=4, col="sienna2", lwd=2)
ablineclip(v=5, lty=5, col="sienna2", lwd=2)
ablineclip(v=6, lty=6, col="sienna2", lwd=5)
ablineclip(v=7, lty=0, col="sienna2", lwd=2)



#Plotting things and setting parameters!!!!

par(mar=c(4,3,3,3), col.axis="darkgreen")
plot(cars$speed, type="s", col="red", bty="n", xlab="Cars ID", ylab="")
text(8, 14, "Speed in mph", cex=0.85, col="red")

par(new=T)#----------->two lines in one plot!!!
plot(cars$dist, type="s", bty="n", ann=F,axes=F, col="darkblue")
axis(side=4, col="darkblue")
text(37,18, "Stopping distance in ft",cex=0.85, col="darkblue")
title(main="Speed and stopping\n Distance of cars")


?rivers
View(rivers)
rivers
x=1:141
y=rivers
plot(rivers,pch=21, bg="green" , col="green", 
     ylab="length in miles", 
     xlab="",
     main="Length of\n Major N American Rivers",
     col.main="red")





