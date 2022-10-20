summary(iris)
head(iris)
by(iris$Petal.Length,iris$Species,summary)
mean(iris$Sepal.Length)
var(iris$Sepal.Length)
boxplot(iris$Petal.Length)
boxplot(Petal.Length ~ Species, data=iris, main="Petal Length", xlab="Species", ylab="Length")


hist(iris$Petal.Length)
hist(iris$Sepal.Width)
hist(iris$Sepal.Width[iris$Species=="setosa"])
hist(iris$Sepal.Width[iris$Species=="versicolor"])
gaga=density(iris$Petal.Length)
plot(gaga)
gaga=density(iris$Sepal.Width[iris$Species=="versicolor"])
plot (gaga)

install.packages("ggplot2")

library(ggplot2)

qplot(data_gaga$AmountSpent, data_gaga$Salary)

plot(data_gaga$AmountSpent, data_gaga$Salary)
data_gaga=read.csv2("C:/Users/gagaputra/Downloads/DirectMarketing.csv")

hist(data_gaga$AmountSpent)
gaga=density(data_gaga$AmountSpent)
plot(gaga)
library(ggplot2)
data_gaga1=read.csv2("C:/Users/gagaputra/Downloads/houseprice.csv")
qplot(data_gaga1$SqFt, data_gaga1$Price)
qplot(data_gaga1$Bedrooms, data_gaga1$Price)
qplot(data_gaga1$Bathrooms, data_gaga1$Price)
qplot(data_gaga1$Offers, data_gaga1$Price)
