#Question 2
install.packages('ISLR')
library(MASS)
View(Boston)
colnames(Boston)
tail(Boston)
#a.
help(Boston)
#There are 14 columns/variables in the data set
#and there are 506 observations.

#b.
bostonplot <- cor(Boston)
View(bostonplot)
#1.lstat
#2. ptratio
#3. rm
#4. indus

#c.

mod1 <- lm(medv ~ lstat + ptratio + rm + indus, data = Boston)
summary(mod1)

#d.
#lstat, ptratio, and rm reject the null hypothesis that median value of owner-occupied homes are not affected by these variables.
#The only variable that is doesn't reject the null hypothesis is indus because it has a high P-Value. 




#e.
par(mfrow = c(2,2))
plot(mod1)


#f.
#Yes there is evidence of heteroscadicity on the graphs. There appears to be a U shaped curve on 2 of the Fitted Values graphs.



#g.

loggeddata <- Boston$lnmedv <- log(Boston$medv)

lnmedv <- lm(loggeddata~ lstat + ptratio + rm + indus, data = Boston)
summary(lnmedv)

#h.
plot(lnmedv)
#Yes there is still some heteroscdastity still prevalent in the data. It has been slighly reduced but there still evidence of it
#in the Scale-Location graph 

#i. 

logmed <- Boston$rmSq <- Boston$rm * Boston$rm


#3.
set.seed(1861)
x1 <- runif(100)
x2 <- 2 + x1 + rnorm(100, 0, 0.02)
Y <- 1 * x1 + 1 * x2 + rnorm(100)
DF <- data.frame(Y, x1, x2)

#a.
plot(x1,x2)

#b.
cor(x1,x2)
# Yes X1 and X2 are very correlated. They have an r value of .99.  

#c.
mod2 <- lm(Y~x1 + x2, data = DF)
summary(mod2)

#x1 = 4.323
#x2 = -2.114

#d.
#The value of the coefficients  should be 1.

#e.
mod3 <- lm(Y~x1, data =  DF)
summary(mod3)
#x1 = 2.22
mod4 <- lm(Y~x2, data = DF)
summary(mod4)
#x2 = 2.215

#f.
#X1 has has a higher R^2 and a lower a P value therefore X1 is my preferred data. 
