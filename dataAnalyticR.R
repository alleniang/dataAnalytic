data <- read.csv("/home/alle/Bureau/GMC/Data Analytics/CleanCreditScoring.csv")
data

mean(data$Income)
median(data$Income)
min(data$Income)
max(data$Income)
quantile(data$Income)
print("The smallest income is 1.00")
print("The largest income is 959.00")
print("The average income is 140.62")

mean(data$Age)
median(data$Age)
min(data$Age)
max(data$Age)
quantile(data$Age)
print("The youngest is 18")
print("The oldest is 68")
print("The average age is 37")

cor(data$Amount, data$Income)
linearMod <- lm(Amount~Income, data=data)
print(linearMod)
print("Amount = 879.87 + 1.13 * Income")

data_standardize <- as.data.frame(scale(data[1:7]))
data_standardize
data.mat <- as.matrix(data_standardize)
cov.mat <- cor(data_standardize)
pca <- prcomp(data_standardize,center = T,scale. = T)
summary(pca)

library(ggfortify)
autoplot(pca, data = iris, colour = 'Species')