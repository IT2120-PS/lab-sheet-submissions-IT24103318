# Set the working directory to where your data is located
setwd("C:\\Users\\IT24103318\\Desktop\\Lab8")  # Replace with your actual directory path

# Assuming you have a vector of laptop bag weights (replace with actual data)
laptop_bag_weights <- c(2.5, 3.0, 3.2, 2.8, 3.4, 2.7, 2.9, 3.1, 3.3, 2.6)  # Example data

# 1. Calculate the population mean and population standard deviation
population_mean <- mean(laptop_bag_weights)
population_sd <- sd(laptop_bag_weights)

# Print the population mean and population standard deviation
cat("Population Mean:", population_mean, "\n")
cat("Population Standard Deviation:", population_sd, "\n")

# 2. Draw 25 random samples of size 6 (with replacement) and calculate the sample mean and sample standard deviation for each sample
sample_means <- numeric(25)
sample_sds <- numeric(25)

for (i in 1:25) {
  sample_data <- sample(laptop_bag_weights, size = 6, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

# Print the sample means and sample standard deviations
cat("Sample Means:\n", sample_means, "\n")
cat("Sample Standard Deviations:\n", sample_sds, "\n")

# 3. Calculate the mean and standard deviation of the 25 sample means
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

# Print the mean and standard deviation of the sample means
cat("Mean of Sample Means:", mean_of_sample_means, "\n")
cat("Standard Deviation of Sample Means:", sd_of_sample_means, "\n")

# Relationship between sample statistics and population parameters
cat("\nRelationship with True Mean and True Standard Deviation:\n")
cat("The mean of the sample means should be close to the population mean:", population_mean, "\n")
cat("The standard deviation of the sample means should be close to the population standard deviation divided by sqrt(sample size):", population_sd / sqrt(6), "\n")

