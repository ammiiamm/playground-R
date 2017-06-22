Smoke=c(rep("Never",6))
Smoke[c(4,6)] <- c(NA,"Heavy")
my_df2 <- data.frame(
  row.names = c(67:72),
  Sex=c(rep("Female",2),rep("Male",2),"Female","Male"),
  W.Hnd=c(rep("Right",6)),
  Pulse=c(NA,64,NA,80,64,NA),
  Smoke=c(Smoke),
  Height=c(172,NA,180,NA,170,176))

#copy column and add to data frame
my_df2$newcol <- my_df2$Height
names(my_df2)

#select all except column 1 then we can remove column
my_df2 <- my_df2[,-1]

#set NULL to the specific column then we can remove column
my_df2$Height <- NULL

#transpose colun
t(my_df2)

my_df2

x <- 5
y <- 0


if(x > 0) print(x)


if(x > 0){
  print(x)
}



#if(x > 3){
  #y = x + 7
  #print(y)

y = 1
z = 10*y
if(y > 9){
  z = 10*y
  print(z)
}else if(y ==1){
  print("y is equal to 1")
}else{
  print("y start from 2 to 9")
}


#paste command for concat text

x = 1
i = 1
for(i in 1:5){
  x = x*i
  print(paste("x =",x, "i =",i))
}

i = 1
while(i<=10){
  print(i)
  i = i+1
}


x = 1:10

mean(x)
max(x)
min(x)
sqrt(x)
sd(x)
var(x)
summary(x)
plot(x,col="blue")



###create FUnction ###

i = 1
countToN <- function(n){
  for(i in 1:n) print(i)
}

countToN(n=10)
countToN(10)


##
findDiscount <- function(shirt,shoes){
  discount_x = 0.2*shirt
  discount_y = 0.5*shoes
  discount_xy = discount_x * discount_y
  return(discount_xy)
}

findDiscount(shirt = 100, shoes = 200)
findDiscount(200,100)



##

getwd()
#setwd("Users/ammii/Desktop")

#basic data set
iris

#write dataset to .csv
write.csv(iris,"/Users/ammii/Documents/R_Training/iris.csv")

?write.csv

#read csv to program | row.names is the way to specific that dataset has column name
mydata = read.csv(file ="/Users/ammii/Documents/R_Training/iris.csv", row.names = 1)

install.packages("MASS")

#to use package, use below command
library(MASS)

#we can auto install essential package by writing function code

install.packages("readxl")

library(readxl)

#load excel data
batting_data <- read_excel("/Users/ammii/Documents/R_Training/batting2008.xlsx",
                           col_names = TRUE, sheet = 1)


summary(batting_data)

hist(batting_data$weight)

boxplot(batting_data$height, batting_data$weight)

plot(batting_data$weight,batting_data$height,main="PLT_NAME")

## line and point
plot(table(batting_data$birthYear),type = "b")
plot(batting_data$birthYear,type = "b") #no table, not good

plot(table(batting_data$birthYear), type = "b",
     col = "blue",
     main = "My graph",
     ylab = "This is x label",
    xlab = "This is y label")

#save environment data
save.image(file = "myenv.RData")

#clear all list
rm(list=ls())

#reload environment that we save from the file. be careful about path
load("myenv.RData")

