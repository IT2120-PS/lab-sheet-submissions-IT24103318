#Q1
# Set working directory (replace with your actual directory path)
setwd("C:\Users\IT24103318\Desktop\lab6")  # Modify the directory path

# Parameters for the Binomial distribution
n <- 50     # Number of trials (students)
p <- 0.85   # Probability of success (passing the test)

# i. Distribution of X
cat("X follows a Binomial distribution: X ~ Binomial(n = 50, p = 0.85)\n")

# ii. Probability that at least 47 students passed the test (P(X >= 47))
prob_at_least_47 <- 1 - pbinom(46, size = n, prob = p)
cat("Probability that at least 47 students passed the test:", prob_at_least_47, "\n")

#Q2

# Parameters for the Poisson distribution
lambda <- 12  # Mean number of calls per hour

# i. Random variable X represents the number of customer calls received in an hour.
cat("X represents the number of customer calls received in an hour.\n")

# ii. Distribution of X
cat("X follows a Poisson distribution: X ~ Poisson(lambda = 12)\n")

# iii. Probability that exactly 15 calls are received in an hour (P(X = 15))
prob_15_calls <- dpois(15, lambda = lambda)
cat("Probability that exactly 15 calls are received in an hour:", prob_15_calls, "\n")
