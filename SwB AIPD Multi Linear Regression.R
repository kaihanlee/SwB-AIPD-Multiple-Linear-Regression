data("swiss")   # import data
# optional: I selected 3 variables for easier explanation
swiss = swiss[,c(1, 4, 6)]

# Multiple linear regression model
model1 = lm(Fertility ~ Education + Infant.Mortality, data=swiss)   
summary(model1)   # summary of multiple linear regression model

par(mfrow=c(2,2))     # optional: fit 4 plots into 1 interface
plot(model1,which=1:4)    # residual plots

par(mfrow=c(1,1))     # optional: fit 1 plot into 1 interface
# use plots to check correlation visually
plot(swiss$Fertility ~ swiss$Education, main="Plot of Fertility against Education")
plot(swiss$Fertility ~ swiss$Infant.Mortality, main="Plot of Fertility against Infant.Mortality")

plot(swiss$Infant.Mortality ~ swiss$Education, main="Plot of Infant.Mortality against Education")
qqnorm(model1$residuals)    # QQ plot to check normality
