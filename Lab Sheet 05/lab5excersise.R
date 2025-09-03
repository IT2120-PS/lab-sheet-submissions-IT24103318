setwd("C:\\Users\\IT24103318\\Desktop\\IT24103318_5")
#1
delivery_times <- read.table("Exercise – Lab 05.txt", header = TRUE, sep = "\t")
head(delivery_times)

#2
breaks <- seq(20, 70, by = (70 - 20) / 9)
hist(delivery_times$DeliveryTime, 
     breaks = breaks, 
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time",
     col = "lightblue", 
     right = TRUE)

#3
# After plotting the histogram, you can manually check for:
# - Skewness: If the bars are skewed towards the left or right
# - Symmetry: Whether the histogram looks symmetric or not
# - Modality: Whether there is one peak (unimodal) or more
# Based on this observation, you can comment on the shape.

#4
delivery_times_freq <- hist(delivery_times$DeliveryTime, 
                            breaks = breaks, 
                            plot = FALSE)

cumulative_freq <- cumsum(delivery_times_freq$counts)
plot(delivery_times_freq$mids, cumulative_freq, type = "o", 
     col = "blue", 
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time", 
     ylab = "Cumulative Frequency", 
     pch = 16, 
     lwd = 2)