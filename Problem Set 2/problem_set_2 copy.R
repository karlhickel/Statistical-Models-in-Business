#Karl Hickel
#Problem Set 2
#Chapter 2
#---------------------------
#Question 3

#Draw curves and describe

#The test mse curve declines but then rises again because at some point during the graphing, our test datacurve will begin to over fit the
#data. The training mse curve falls as flexibility increases, and thats because our data fits more closesly. The squared bias curve decreases
#as more flexible methods are used. The variance curve increases as more flexible methods are used. 
#
#---------------------------
#Question 10
#a.
library(MASS)
View(Boston)
#There are 506 rows.
#There are 14 columns
#Rows are the properties in suburb Boston
#Columns categories for analysis

#b.
crime <- Boston$crim
plot(Boston$nox, crime)
plot(Boston$indus, crime)

#I plotted nitrogen oxides concentration against crime and found that 
#there is a increase in crime between 0.6 and 0.75.
#I also plotted industry against crime and found that there was a huge increase in crime
#at industry 17 and then it begins to decrease after that. 


#c.
cor(Boston$tax, crime)
#I haven't seen any predictors that strongly associate with crime, except tax which has a correlation of around
#0.58

#d.
plot(crime)
#There is high crime, between index 360 and 470. Crime reaches as high as 80. 
plot(Boston$tax)
#There are high taxes between indexes 330 and 470. With taxes reaching as high as 670.
plot(Boston$ptratio)
#There are a number of indexes that  are relatively high. Between 20-50 its high, and between 300 and 490 its also very high. 

#e.
houseriver <- subset(Boston,chas > 0)
nrow(houseriver)

#There are 35 data sets next to the river.

#f.
median(Boston$ptratio)

#g.
#I used an online reference to find out how to place the median values in order from smallest to greatest. 
medianValue <- Boston[order(Boston$medv),]
medianValue[1,]
summary(medianValue)
#The lowest vale of owner occupied homes has a very high crime rate of about 38. Very high industry
#High nitrogen oxide levels, larger number of rooms, about 5.
#399 is the suburb with the lowest median value. 

#h.
#Found that subset was the best method to approaching this problem. I utilized an online resource. nrow also best 
#counted the number of rows, or properties that had greater than 7 rooms.
#https://www.statmethods.net/management/subset.html
room7 <- subset(Boston, rm>7)
nrow(room7)
room8 <- subset(Boston, rm>8)
nrow(room8)


#---------------------------
#Chapter 3
#Question 1
#The p values for both TV and Radio are less that .0001 indicating that there is strong evidence against the null hypothesis
#that there is no relationship between the number of sales and TV and Radio. On the other hand newspaper has a p value of 
#0.8599 indicating that there isn't sufficient amount of evidence to argue against the null hyposthesis. 

#---------------------------
#Question 3




#---------------------------
#Question 8

install.packages('ISLR')
library('ISLR')
data(Auto)
View(Auto)

#a.
autoRegression <- lm(mpg ~ horsepower, data = Auto)
autoRegression
summary(autoRegression)
#i.
#There is a relationship between the predictor and the response because the p value is significantly less than 0.05

#ii. 
#The relationship is pretty strong because the R^2 value is .6059. So this means roughly 60.59% of the data is within the
#variance.

#iii.
cor(Auto$mpg,Auto$horsepower)
#Horsepower is negative and every increase in x would result in a negative association with mpg. Also correlation is 
# -0.778


#iv.
#Found  this one in the book and online. 
predict(autoRegression, data.frame(horsepower = 98), interval = "confidence")
predict(autoRegression, data.frame(horsepower = 98), interval = "prediction")
#b.
plot(Auto$horsepower, Auto$mpg)
abline(autoRegression, col="red")

#c.
par(mfrow = c(2,2))
plot(autoRegression)
#There are a number of outliers that have an impact on the least squares regression line. As a result of outliers like
#on the "Scale-Location"  the points on 334. 

