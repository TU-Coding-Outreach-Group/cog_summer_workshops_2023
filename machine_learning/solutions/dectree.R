# classification / decision tree example solution
set.seed(123)

shuffle.index <- sample(1:nrow(df))
shuffle.df <- df[shuffle.index, ]
shuffle.df <- shuffle.df[, c(-2,-5)]

create_train_set <- function(data, size = 0.8, train = TRUE) {
  n_row = nrow(data)
  total_row = size * n_row
  train_sample <- 1:total_row
  if (train == TRUE) {
    return (data[train_sample, ]) 
  } else {
    return (data[-train_sample, ])
  }
}

df.train <- create_train_set(shuffle.df, 0.8, train = T)
df.test <- create_train_set(shuffle.df, 0.8, train = F)

fit <- rpart(species ~ ., data = df.train, method = "class")
rpart.plot(fit, extra = 106)

predicted.test <- predict(fit, df.test, type = 'class')
table_predicted <- table(df.test$species, predicted.test)
table_predicted

accuracy <- sum(diag(table_predicted)) / sum(table_predicted)
accuracy <- accuracy * 100
print(paste0("Decision tree classification accuracy = ", round(accuracy, digits = 2), "%", sep = ""))