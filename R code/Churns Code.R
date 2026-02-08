file.choose()
data <- read.csv("C:\\Users\\ASUS\\Downloads\\Customer-Churn-Records.csv")
head(data)
attach(data)
Satisfaction_Score <- as.factor(Satisfaction.Score)
model <- glm(Exited ~ CreditScore+Geography+Gender+Age+Balance+NumOfProducts+HasCrCard+IsActiveMember+EstimatedSalary + EstimatedSalary + Complain+Satisfaction_Score+Card.Type +Point.Earned, family = binomial())
summary(model)
modell<- glm(Exited ~ Age + IsActiveMember + Balance +Satisfaction_Score + Complain +Point.Earned +log(NumOfProducts)+NumOfProducts, family = "binomial")
summary(modell)
backward <- step(model, direction = "backward")

model1 <- glm(Exited ~ Age + IsActiveMember + Satisfaction_Score + Complain + Point.Earned, family = binomial())
summary(model1)
library(alr4)
mmps(model1)
model2 <- glm(Exited ~ CreditScore + Age + Balance + NumOfProducts + Satisfaction_Score + Gender, family = binomial())
summary(model2)
library(alr4)
mmps(model2)

model3<- glm(Exited ~ Age + IsActiveMember + Satisfaction_Score + Complain + Point.Earned +NumOfProducts, family = "binomial")
summary(model3)
mmps(model3)

y <- Exited
par(mfrow=c(2,1))
plot(density(NumOfProducts[y==0],bw="SJ",kern="gaussian"),type="l",
     main="Gaussian kernel density estimate",xlab="x1")
rug(NumOfProducts[y==0])
lines(density(NumOfProducts[y==1],bw="SJ",kern="gaussian"),lty=2)
rug(NumOfProducts[y==1])
legend(190, 0.0275,legend=c("No","Yes"),lty=1:2,title="Heart Disease?")

model4<- glm(Exited ~ Age + IsActiveMember + Satisfaction_Score + Complain +Point.Earned +log(NumOfProducts)+NumOfProducts, family = "binomial")
summary(model4)
mmps(model4)

mmp(model4, Age, key = "Exited")
mmp(model4, Point.Earned, key = "Exited")
mmp(model4, log(NumOfProducts), key = "Exited")
mmp(model4, NumOfProducts, key = "Exited")
mmp(model4, Linear Predictor, key = "Exited")
boxplot(NumOfProducts ~ Exited, ylab="exit", xlab="product")
mmps(model4)

#EstimatedSalary is not getting transformed
#Balance cannot be transformed using Log, because it has 0 values




anova(model2, model, test="Chisq")
anova(model1, model, test="Chisq")
anova(model3, model, test="Chisq")
anova(model4, model, test="Chisq")
anova(model3, model4, test="Chisq")

par(mfrow=c(1,1))
hvalues <- influence(model4)$hat
stanresDeviance <- residuals(model4)/sqrt(1-hvalues)
plot(hvalues, stanresDeviance, ylab="Standardized Deviance Residuals", xlab="Leverage Values", ylim=c(-3,3), xlim=c(-0.05,0.7))
abline(v=2*7/169,lty=2)

par(mfrow=c(2,3))
boxplot(Age ~ Exited)
boxplot(IsActiveMember ~ Exited)
boxplot(Satisfaction_Score ~ Exited)
boxplot(Complain ~ Exited)
boxplot(Point.Earned ~ Exited)
boxplot(log(NumOfProducts) ~ Exited)


library(car)
vif(model3)




# h0 reduced model, ha full model
anova(model3, model4, test="Chisq")


library(arm)
b1<-model5$coeff[2]
se.b1<-se.coef(model5)[2]
LB.90<-b1-qnorm(0.95,0,1)*se.b1
UB.90<-b1+qnorm(0.95,0,1)*se.b1
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b2<-model5$coeff[3]
se.b2<-se.coef(model5)[3]
LB.90<-b2-qnorm(0.95,0,1)*se.b2
UB.90<-b2+qnorm(0.95,0,1)*se.b2
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b3<-model5$coeff[4]
se.b3<-se.coef(model5)[4]
LB.90<-b3-qnorm(0.95,0,1)*se.b3
UB.90<-b3+qnorm(0.95,0,1)*se.b3
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b4<-model5$coeff[5]
se.b4<-se.coef(model5)[5]
LB.90<-b4-qnorm(0.95,0,1)*se.b4
UB.90<-b4+qnorm(0.95,0,1)*se.b4
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b5<-model5$coeff[6]
se.b5<-se.coef(model5)[6]
LB.90<-b5-qnorm(0.95,0,1)*se.b5
UB.90<-b5+qnorm(0.95,0,1)*se.b5
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b6<-model5$coeff[7]
se.b6<-se.coef(model5)[7]
LB.90<-b6-qnorm(0.95,0,1)*se.b6
UB.90<-b6+qnorm(0.95,0,1)*se.b6
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b7<-model5$coeff[8]
se.b7<-se.coef(model5)[8]
LB.90<-b7-qnorm(0.95,0,1)*se.b7
UB.90<-b7+qnorm(0.95,0,1)*se.b7
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b8<-model5$coeff[9]
se.b8<-se.coef(model5)[9]
LB.90<-b8-qnorm(0.95,0,1)*se.b8
UB.90<-b8+qnorm(0.95,0,1)*se.b8
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b9<-model5$coeff[10]
se.b9<-se.coef(model5)[10]
LB.90<-b9-qnorm(0.95,0,1)*se.b9
UB.90<-b9+qnorm(0.95,0,1)*se.b9
CI.90<-c(LB.90,UB.90)
exp(CI.90)

b10<-model5$coeff[11]
se.b10<-se.coef(model5)[11]
LB.90<-b10-qnorm(0.95,0,1)*se.b10
UB.90<-b10+qnorm(0.95,0,1)*se.b10
CI.90<-c(LB.90,UB.90)
exp(CI.90)
AIC(model3,model4)
BIC(model3,model4)


library(ResourceSelection)
hoslem.test(model4$y, fitted(model4), g=8)
