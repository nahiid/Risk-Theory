# Load the mtcars dataset
data(mtcars)

# Calculate Kendall's tau for mpg and wt columns
library(Kendall)

tau <- cor(mtcars$mpg, mtcars$wt, method = "kendall")
tau

# Calculate Kendall's tau for mpg and wt columns
result <- cor.test(mtcars$mpg, mtcars$wt, method = "kendall")
result$estimate

# Or: 
# data(cars)
# result <- cor.test(cars$Speed, cars$Dist, method = "kendall")
# result$estimate

