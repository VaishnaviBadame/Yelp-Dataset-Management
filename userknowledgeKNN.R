userdata = read.csv("C:/Users/Yug/Desktop/Bigdata Project/CompleteUserDataSet.csv")
userdata$X <- NULL
userdata$X.1 <- NULL
userdata$X.2 <- NULL
summary(userdata)
attach(userdata)
str(userdata)
userdata_train <- userdata[1:300,1:5]
head(userdata_train)
dim(userdata_train)
userdata_test<-userdata[301:403,1:5]
dim(userdata_test)
userdata_train_class = userdata[1:300,6]
userdata_test_class = userdata[301:403,6]
summary(userdata_test_class)
library(class)
userdata_test_pred = knn(train = userdata_train, test = userdata_test,cl = userdata_train_class, k=10)
library(gmodels)
CrossTable(x=userdata_test_class,y=userdata_test_pred,prop.chisq = FALSE)
accuracy = 100 * sum(userdata_test_class == userdata_test_pred)/NROW(userdata_test_class)
print(accuracy)
library(caret)
confusionMatrix(userdata_test,userdata_test_class)
plot(userdata_test_pred,userdata_test_class)

