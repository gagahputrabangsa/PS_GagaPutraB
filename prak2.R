a <- c(1,2,-5,0.3,6,-2,4) # numeric vector
b <- c("one","two","three") # character vector
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE) #logical vector
print(a)
print(b)
print(c)
#=========================================
cells <- c(3,15,-27,38)
rgagah <- c("R1", "R2")
cgagah <- c("C1", "C2") 
mymatrix <- matrix(cells, nrow=2, ncol=2, byrow=TRUE,
                   dimnames=list(rgagah, cgagah))
print(mymatrix)
#=========================================
d <- c(1,2,3,4)
e <- c("red", "white", "red", NA)
f <- c(TRUE,TRUE,TRUE,FALSE)
data_gagah <- data.frame(d,e,f)
names(data_gagah) <- c("ID","Color","Passed") # variable names 
print(data_gagah)
#=========================================
data_gagah <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
print (data_gagah)
#========================================
install.packages('RMySQL')
library(RMySQL)
con = dbConnect(MySQL(), user = 'root', password = '', dbname = 'PS2_gaga', host = 'localhost')
dbListTables(con)
myQuery <- "select * from data_r_gagah;"
df<-dbGetQuery(con,myQuery)
#===========================================

install.packages("dplyr")
library(dplyr)
df<- filter(df,Brick=="No")
print(df)
#==========================================
library(dplyr)
df<-filter(df,jenis.Brick=="No",Neighborhood=="East")
print(df)
#==========================================
library(dplyr)
df<-filter(df,jenis.kelamin=="P")
print(df)
#==========================================