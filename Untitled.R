## R version description
version 

3+5.66
45-76.8

#### test collapse ####
# Hello
# Test
# Collapse

sqrt(2)
log(10) #this is log base e
log10(10)
exp(1)
3^-1
abs(-952)

#set variable
a=1
b <- 2
c <- 2

a-b
a*b
a <- 1:10
b <- 10:1

a <- 11
a = a + 11

#how to print
a
print(a)

print(b)

print(b[3])


test <- 10
rm(test)

###################
####single mode####
###################
a <- 14 #a was converted as numeric data
z <- TRUE #logical data. it must be in big capital
y <- "Test" #single quote & double quote are the same
y <- 'Test'
y <- "'test'"
t <- 3L #integer it means that it is integer
d <- 3.0
e <- 3.5
h <- 4-3i #complex number 
f <- 1
T & T
T & F
TRUE & FALSE
T | T
T | F

a == c
a < c
a != c
a >= c

a == c & f == c
a == c & f != c
a != c & f != c

test <- "Today"
wk.day <- "Friday"

Alphabet_caps <- LETTERS #for data simulation
Alphabet_caps

Alphabet <- letters
Alphabet

rev.Alphabet <- rev(Alphabet)

data <- 23

#paste will do auto-separation
mytext1 <- paste(test, "is", wk.day, ",",data,sep= " ")

#paste0 will not auto-seperate text. we need to separate by ourselves
mytext2 <- paste0(test, " ","is"," ", wk.day," ", ",",data)

mytext2 <- paste0(test, " ","is"," ", wk.day," ", ",",data)

y <- c(3,7,9,11,14,7,8.99,308,172)
print(y)

#call element in array, we use [ ]
y[3]
y[1:3]
y[-2] #Query all elements except data at position [2]

y[1]
x <-c(T,F,F,T,F,T)
length(y)
x
length(x)

v <- c("hey","monday","a","b","today")
which(v =="a")

1:20
3:12
12:3

rev(1:10)

rep(12,5) #replicate number '12' for 5 times

rep(c(1,3,5),3) #replicate 1,3,5 for 3 times

seq(20,50)
#define the interval between each element
seq(from=20,to=50,by=3)
#Don't care what number will be but scope only the number of element
seq(from=20,to=50,length.out=15) 

my_fac1 <- factor(c("A","B","A","A","C","B","B","C"))
my_fac1

my_fac2 <- factor(c("S","M","M","L","XL","S","S","XL","L"))
my_fac2

levels(my_fac2)

my_fac3 <- factor(my_fac2, levels = c("S","M","L","XL"))
my_fac3

B_mat <- matrix(data=c(1,2,3,4,5,6),nrow=2,byrow=F)
A_mat <- matrix(data=c(1,2,3,4,5,6),nrow=2,byrow=T)
A_mat
B_mat

A_mat[,1]
A_mat[2,1]
A_mat[2,2]
A_mat[1,]


###################
####multi data mode#### 
# in one data has many data type
###################

my_df <- data.frame(col_1=c(11,12,14),
                    feature=c(19L,20L,21L),
                    col_3=c("X","M","L"))

my_df

#for checking data structure
str(my_df)

#check object type
class(my_df)

x <- 1:10
class(x)
x <- 1.1:10.0
class(x)
is.vector(x)
y <- 2
is.vector(y)
z <- T
is.vector(z)

summary(my_df)

my_df$col_1
my_df$col_2
my_df$col_3

my_df

str(my_df$col_1)
class(my_df$col_1)

is.vector(my_df$feature)

median(my_df$col_1)

#list column name in dataframe or list of data
names(my_df)
colnames(my_df)
#row name <> not exactly an id, it just a name but we can treat as id as well
row.names(my_df)

#count number of column and row. can be used with data that has dimension x*y
ncol(my_df)
nrow(my_df)

my_df[1:2]
my_df["col_1"]

#if we want to retrieve deep data by specific x and y dimension
my_df[["col_1"]][2]

my_df[,"feature"]
my_df[1,]
my_df[["col_1"]][which(rownames(my_df) == "3")] #access data with row name


Smoke=c(rep("Never",6))
Smoke[c(4,6)] <- c(NA,"Heavy")
my_df2 <- data.frame(
  row.names = c(67:72),
  Sex=c(rep("Female",2),rep("Male",2),"Female","Male"),
  W.Hnd=c(rep("Right",6)),
  Pulse=c(NA,64,NA,80,64,NA),
  Smoke=c(Smoke),
  Height=c(172,NA,180,NA,170,176))

colnames(my_df2)[1] <- "col1"

my_df2


