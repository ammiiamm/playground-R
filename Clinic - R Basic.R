# title: "Clinic - R Basic"
# author: "by Nattaporn Netirungroj | Datascience Lab, Thailand"

# R First Time

## R version
version

#### Section 1
# comment
3+5.66
45-76.3
99*74.23
85/32


#### Section 2 ####
# use 4 of # symbol to separate sections

sqrt(2)
log(10)
log10(10)
exp(1)
3^-1
(13*0.42)^(1/3)
3+4*5^2
abs(-5)


#### Variables & Object ####
a = 1
b <- 2
a+b
a*b

a <- 1:10
b <- 10:1

a = 11
a = a + 11
a
print(a)

# Tips 1: it's a case-sensitive

# Remove Variable & Object
test <- 10
test
rm(test)


# Tips 2: '<-' is suitable for assigning an object or variable 
# while '=' should be used for giving value to a parameter or argument
# it would make your code easy to read


## Data Size: Single ####
# Not a set of data (known as 'Atomic')

a <- 14  #scalar: real number
x <- 1^2
z <- TRUE #logical
y <- "Man" #charactor
t <- 3L #integer
d <- 3.0 #scalar double (also real number)
c <- 4-5i #complex



### Logical ####
# TRUE and FALSE are special words as well as T and F

# ! means NOT
# & or && means AND
# | or || means OR

F
TRUE
FALSE


# Logical operation
!TRUE
!FALSE

TRUE | FALSE
FALSE | TRUE

FALSE & FALSE 
TRUE & TRUE

TRUE & FALSE

## Comparison ####

# assign value to object
a <- 30
b <- 30

# compare
a == b
a != b
a < b
b < a
a <= b
a >= b

a == b & b == a
a !=b & b == a


### Character & String ####
text <- "Today"
wk.day <- 'Friday'

Aphabet_caps <- LETTERS
Aphabet_caps

Aphabet <- letters
Aphabet

# reverse text
rev.Aphabet <- rev(Aphabet)

# Concatenate text and value
date <- 23

mytext1 <- paste(text, "is", wk.day, ",", date, sep = " ")
mytext2 <- paste0(text, "is", wk.day, ",", date)

# check
mytext1
mytext2

#Tips 3: charactor/string can be measure using function nchar() 
#like: nchar(mytext_object)


## Data Size: Multiple ####
# A set of data

### Vector ####
# it is a single mode data which means it contains only 1 type of data.
# vector will be adjusted automatically if you put multiple kind of data to it

y <- c(3,7,9,11,14.7,8.99,300,172)
y
y[1]
y[9]
y[-2]
x <- c(T,F,F,T,FALSE,TRUE)
x
length(y)

# this is a text vector
v <- c("hey","monday",'a',"b","today")

which(v == "a")

1:20
3:12
12:3

rev(1:10)

rep(12,5)
rep(c(1,3,5),3)

seq(20,50)
seq(from=20,to=50,by=3)
seq(from=20,to=50,length.out = 15)


### Factor ####
# categorical data
my_fac1 <- factor(c("A","B","A","A","C","B","B","C"))
my_fac1
my_fac2 <- factor(c("S","M","M","L","XL","S","S","XL","L"))
my_fac2

# check level of factor
levels(my_fac2)

my_fac3 <- factor(my_fac2, levels = c("S", "M", "L", "XL"))
my_fac3
levels(my_fac3)



## Matrix ####
# is a combination of the same 'kind' of vectors
# index [row,col]


B_mat <- matrix(data=c(1,2,3,4,5,6),nrow=2,byrow=F)
A_mat <- matrix(data=c(1,2,3,4,5,6),nrow=2,byrow=T)
A_mat

# query
A_mat[,1]
A_mat[2,]
A_mat[2,1]
A_mat[2,2]
A_mat[1,]
A_mat[,2]


# Both vector and matrix are 'single mode data' ****

## Data Frame ####
# is a combination of the 'various' kind of vectors
# it's a 'multi mode data' ****


# data frame look like matrix with named columns and 
# each columns can be of different types but similar length
my_df <- data.frame(col_1=c(11,12,14), 
                    feature=c(19L,20L,21L), 
                    col_3=c("X","M","L"))
my_df

# check data structure
str(my_df)

# check object type
class(my_df)

#summerize dataset
summary(my_df)

#get data in column name 'col_1'
my_df$col_1


str(my_df$col_1)
class(my_df$col_1)

#mean value of column name 'feature'
mean(my_df$feature)

#check data variable name
names(my_df)
colnames(my_df)

#check row name
rownames(my_df)

#dimension check
ncol(my_df)
nrow(my_df)

#query
my_df[1:2]
my_df["col_1"]
my_df[["col_1"]][2]

my_df[,"feature"]
my_df[1,]
my_df[,c("col_1","col_3")]
my_df[,2]
my_df[,1:2]
my_df[2:3,1:2]
my_df[my_df$col_3=="X",]