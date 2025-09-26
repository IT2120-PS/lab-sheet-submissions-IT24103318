#Q1
# Set working directory (replace with your actual directory path)
setwd("C:\\Users\\IT24103318\\Desktop\\lab7")  # Modify the directory path

# i. Uniform Distribution: Train arrival between 8:00 a.m. and 8:40 a.m.
total_time <- 40  # Total time interval (from 8:00 a.m. to 8:40 a.m.)
start_time <- 10  # Start time for the interval (8:10 a.m.)
end_time <- 25    # End time for the interval (8:25 a.m.)

# ii. Calculate the probability that the train arrives between 8:10 a.m. and 8:25 a.m.
probability <- (end_time - start_time) / total_time
cat("Probability that the train arrives between 8:10 a.m. and 8:25 a.m.:", probability, "\n")

#Q2
# i. Exponential Distribution: Software update time with rate λ = 1/3
lambda <- 1 / 3   # Rate parameter (mean = 3 hours)
time_limit <- 2   # Time limit (2 hours)

# ii. Calculate the probability that the update will take at most 2 hours
probability_update <- pexp(time_limit, rate = lambda)
cat("Probability that the update will take at most 2 hours:", probability_update, "\n")

#Q3
# i. Normal Distribution: IQ scores with mean = 100 and SD = 15
mean_IQ <- 100      # Mean IQ score
sd_IQ <- 15         # Standard deviation of IQ scores
IQ_threshold <- 130 # IQ threshold for part i

# Calculate the probability that a randomly selected person has an IQ above 130
probability_above_130 <- 1 - pnorm(IQ_threshold, mean = mean_IQ, sd = sd_IQ)
cat("Probability that a randomly selected person has an IQ above 130:", probability_above_130, "\n")

# ii. Find the IQ score corresponding to the 95th percentile
percentile_95 <- qnorm(0.95, mean = mean_IQ, sd = sd_IQ)
cat("IQ score that represents the 95th percentile:", percentile_95, "\n")