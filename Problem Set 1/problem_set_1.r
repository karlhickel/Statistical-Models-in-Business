#Karl Hickel
#MGSC 310
#Problem Set 1


#----------------------------
#Question 1
#a.
#Generally speaking with a large sample size it is very easy to make assertive decisions using an flexible method
#This would perform better than a inflexible learning method because you have a very large sample size and you don't want to overfit
#the model

#b.
#With a small sample size and a large number of predictors it would be more effective making decisions using a 
#inflexible statistical learning method than an flexive one. Inflexive methods peform a lot better when they have large sample sizes

#c.
#Under these circumstances a flexible statistical learning method would be more acurreately because an inflexive method is more effective
#when showing positive correlations. 

#d. 
#Under a situation when you have a high variance it is problematic to use an flexive method because it will not fit 
#graph very well. It will ultimately be problematic so it is better to use a inflexible statistical learning method. 
#High variance leads to overfitting a model. 



#----------------------------
#Question 2
#a.
#This is a classification problem. Since you are attempting to discern which factors affect CEO
#salary this a makes it a qualitative problem. The problem is focused on inference and how certain variables
#affect a greater outcome.
#n = 500, p = employee number , industry, record profit

#b. 
#This is a classification problem since you are attempting to find out whether a product will be a failure or
#a success. We are interested in the prediction since we are searching for whether a company will be successful
#n = 20 , p = success or failure, price charged, marketing budget, competition price, ten other variables

#c.
# This is a regression problem since we are attempting to find out what is the quantitative change in weekly
#% in the market. We are interested in the prediction of % change in the markets 
# n = Weekly date for 2012, p = % change in the dollar, the % change in the US market, 
#the % change in the British market, and the % change in the German market.





#----------------------------
#Question 4
#a.
#Classification applications could include height. You may use someones height to discern how tall their children will be.
#So the individual would be the predictor and the child would be the response. This would be an example of a prediction.
#Hobby could be a classification of an individual and depending on which hobby the individual participates in you can make an inference
#on their gender. Predictor would be the hobby and the response would be the gender. This would be an example of prediction.
#Religion could be another classification to see how often someone participates in faith related activities. The predictor would be the religion
#and the response variable would be the number of activities they perform that are religiously based. This would be an example of prediction.

#b.
#Regression problem could be the probabilty based on someones BMI of developing diabetes. The predictor would the individuals weight and the response
#would be the likely hood of developing the disease. This could be used as a predictor or a an inference depending on whether or not you are looking
#at an entire population or just one specific individual
#Another regression problem could be how well does a company perform over a given period of time. The predictor being days or months, and the 
#response being the stock value. You could use regression in an attempt to make a generization to see how well a company has performed based on its regression.
#What is the distribution of students that are accpeted into graduate school solely based on their gpa. Predictor being the gpa and the response being whether or not they were accepted.
#You would use and inference to closely examine the relationship between their acceptance and their gpa.

#c.
#For a cluster analysis you make want to predict someones income based on their race, parents income, where they live, number of years of education
#extracurricular activiites, social groups, etc. You could predict whether or not someone is more likely to be a criminal, (this is an example of profiling
#and I am aware that statistically speaking does not result in well thought out policy but is still used never the less)
#And finally you could use cluster analysis to predict how well a movie will do with different demographics based on previous releases and marketing
#methods. 




#----------------------------
#Question 8
#We loaded it in class but I will load it anyways.
#a.
install.packages('ISLR')
library('ISLR')
data(College)
View(College)


#c1.
summary(College)

#c2
columns <- College[ ,1:10 ]
pairs(columns)


#c3
plot(College$Private , College$Outstate)

#c4
Elite = rep("No", nrow(College))
View(College)
Elite[College$Top10perc>50] = "Yes"
Elite = as.factor(Elite)
College = data.frame(College, Elite)
summary(College)
plot(College$Elite, College$Outstate)

#c5
par(mfrow=c(2,2))
hist(College$Enroll)
hist(College$Books)
hist(College$Outstate)
hist(College$Expend)


#c6
plot(College$Private, College$Outstate)
#Private schools are more expensive for out of state students.
