# k-nearest neighbors example #2 solution
set.seed(123)
ran <- sample(1:nrow(df), 0.8 * nrow(df))
nor <- function(x) { (x - min(x))/(max(x) - min(x)) }
df.norm <- as.data.frame(lapply(df[,c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")], nor))
summary(df.norm)
df.train <- df.norm[ran,]
df.test <- df.norm[-ran,]
df.category <- df[ran, 1]
pred <- knn(train = df.train, test = df.test, cl = df.category$species, k = 3)
accuracy <- 100 * sum(df.category$species == pred)/nrow(df.category)
print(paste0("KNN classification accuracy = ", round(accuracy, digits = 2), "%", sep = ""))