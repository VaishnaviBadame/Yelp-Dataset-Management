userdata = read.csv("C:/Users/Yug/Desktop/Bigdata Project/CompleteUserDataSet.csv")
userdata$X <- NULL
userdata$X.1 <- NULL
userdata$X.2 <- NULL
library(caret)
library(rpart)
library(rpart.plot)
#attach(userdata)
#set.seed(123)
#indexes = sample(403,201)
set.seed(3033)
intrain <- createDataPartition(y = userdata$UNS , p= 0.7, list = FALSE)
userdata_train = userdata[intrain,]

userdata_test = userdata[-intrain,]


tree = rpart(userdata$UNS ~ userdata$STG+userdata$SCG+userdata$STR+userdata$LPR+userdata$PEG, data = userdata_train, method = "class")
prp(tree)
printcp(tree)
plotcp(tree)
summary(tree)



