userdatakm = read.csv("C:/Users/Yug/Desktop/Bigdata Project/CompleteUserDataSet.csv")
userdatakm$X <- NULL
userdatakm$X.1 <- NULL
userdatakm$X.2 <- NULL

user.features<-userdatakm[, 1:4]
#View(user.features)
results<-kmeans(user.features, 4)
results
plot(user.features,col=results$cluster, pch = 20, cex = 3)
points(results$centers, col=1:3, pch=21, cex=3)

user.features1<-userdatakm[, 3:4]
#View(user.features)
results<-kmeans(user.features1, 4)
results
plot(user.features1,col=results$cluster, pch = 20, cex = 3)
points(results$centers, col=1:3, pch=21, cex=3)

user.features2<-userdatakm[, 2:3]
results<-kmeans(user.features2, 4)
results
plot(user.features2,col=results$cluster, pch = 20, cex = 3)
points(results$centers, col=1:3, pch=21, cex=3)
user.features3<-userdatakm[, 2:3]
results<-kmeans(user.features3, 4)
results
plot(user.features3,col=results$cluster, pch = 20, cex = 3)
points(results$centers, col=1:3, pch=21, cex=3)

