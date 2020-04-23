install.packages(c("swirl", "swirlify"))
library(swirlify)
getwd() #setting your working directory 
y<-read.csv(file="/Users/vasilikipanagiotidi/Downloads/hw1_data.csv") #read.table (name of the file) , sep how the columns are separated or read.csv readLines(y,10) 
dir() #list all files in the directory
myfunction<-function(x){
  y<-rnorm(100)
  mean(y)
}
myfunction (100)
ls() #find objects in your work space 
source("myfunction.R")
ls()
as.numeric(x) #convert an object to numeric
as.logical(x) #convert an object to logical
as.character(x)
as.complex(x)
x<-list(x,"a",TRUE,1+4i) #type of vector that contains elements

m<-matrix(nrow=2,ncol=3)

dim(m) #dimension of rows, columns
attributes(m) #returns the list of dimensions
m<-matrix(1:6,nrow=2,ncol=3)
m<-1:10
dim(m)<-c(2,5)
m
m[1,2, drop=FALSE] #get back a number not a matrix, 1-d matrix back 
m[1,] #vector with the elements 1,3,5,7,9
m[1, ,drop=FALSE] # get a 1x5 matrix 
x<-1:3
y<-10:12
cbind(x,y) 
rbind(x,y)
factor #represent categorical data
x<-factor(c("yes","yes","no"))
x
table(x)
unclass(x)
attr(x,"levels")
x<-factor(c("yes","yes","no"),levels=c("yes","no"))
x #levels of attribute is reverse, yes is the first attribute and no it's the second
is.na() #if objects are NA
is.nan() #is used to test for NaN, the NaN is NA but the converse is not true 
x<-c(1,2,NA,10,2)
is.na(x)
is.nan(x)
a<-c(1,2,NA,5,NA,6)
a
bad<-is.na(a) #go through the vector and tell me which ones are NA, logical vector 
a[!bad] #remove by subsetting missing elements, ! exclude the bad elements 
complete.cases #multiple things and want to take the no missing data 

#dataframe
x<-data.frame(foo=1:4,bar=c(T,T,F,F))
x<-data.frame(a=1,b="a")
dput(x)
dput(x, file="y.R")
new.x<-dget("y.R") #single r object 
new.x

#names
x<-1:3
names(x)
names(x)<-c("foo","bar","cit")
x<-list(a=1,b=2,c=3)
x

m<-matrix(1:4,nrow=2,ncol=2)
dimnames(m)<-list(c("a","b"),c("c","d"))
m

#subsetting 
x<-c("a","b","c","d")
x[2]
x[1:4]
x[x>"a"]

#subsetting list 
x<-list(foo=1:4,bar=0.6)
x[1] # a sequence of a list 
x[[1]] #a sequence 1 to 4
x[c(1:2)] #extract elements of a list, same as without c
x[[c(1,4)]]# extract the 4th element of the first vector 
x$bar 
x[["bar"]]
x["bar"]

x<-c(4,TRUE)
x<-1:4
y<-2:3
x+y

#exercise
quizdata<-read.csv(file="/Users/vasilikipanagiotidi/Downloads/hw1_data.csv") #read.table (name of the file) , sep how the columns are separated or read.csv readLines(y,10) 
View(quizdata)

extract<-quizdata[1:2, ,drop=FALSE] # 12
print(extract)
extractlast2<-quizdata[152:153, ,drop=FALSE] # 14
print(extractlast2)
Ozone<-quizdata$Ozone #isolates the column Ozone 
#Temp<-quizdata$Temp #isolates the column Ozone 

element47<-quizdata$Ozone #isolates the column Ozone 
element47[c(47,drop=FALSE)] #return the value of Ozone in the 47th row

is.na() #if objects are NA
is.nan() #is used to test for NaN, the NaN is NA but the converse is not true 
badOzone<-is.na(Ozone)
#badTemp<-is.na(Temp)

Ozonenumb<-Ozone[!bad] #remove by subsetting missing elements, ! exclude the bad elements
#Tempnumb<-Temp[!badTemp]
numericOzone<-as.numeric(Ozonenumb) #convert an object to numeric
#numericTemp<-as.numeric(Tempnumb) #convert an object to numeric
mean(numericOzone) #mean of the Ozone column excluding the non missing data 

element47new<-quizdata[c("Ozone","Temp","Solar.R")] #isolates the column Ozone & Temp as a matrix 
Ozone31<-list(element47new$Ozone>31 & element47new$Temp>90) #stuck here 18
