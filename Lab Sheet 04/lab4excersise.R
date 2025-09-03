setwd("C:\\Users\\IT24103318\\Desktop\\IT24103318")
#1
branch_data <- read.table("Exercise.txt", header = TRUE, sep = "\t")
head(branch_data)

#2
str(branch_data)

#3
boxplot(branch_data$Sales, main = "Boxplot for Sales", ylab = "Sales", col = "lightblue")

#4
advertising_summary <- fivenum(branch_data$Advertising)
advertising_IQR <- IQR(branch_data$Advertising)
advertising_summary
advertising_IQR

#5
find_outliers <- function(x) {
  q1 <- quantile(x, 0.25)
  q3 <- quantile(x, 0.75)
  iqr <- q3 - q1
  lower_bound <- q1 - 1.5 * iqr
  upper_bound <- q3 + 1.5 * iqr
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}

outliers_years <- find_outliers(branch_data$Years)
outliers_years
