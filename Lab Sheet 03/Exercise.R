setwd("C:/Users/it24100641/Desktop/IT24100641_Lab_03")

student_data<- read.csv("Exercise.csv",header = TRUE)

fix(student_data)

names(student_data) <- c("Age", "Gender", "Accommodation")


attach(student_data) #attach() lets you use Age instead of student_data$Age.

summary(Age)

#get min max mean Qualtiles the 5 info 


# histogram
hist(Age,
     main = "Histogram of Student Ages",
     xlab = "Age (years)",
     ylab = "Frequency")

# freqency table
gender_table <- table(Gender)
gender_table


barplot(gender_table,
        main = "Distribution of Student Gender",
        ylab = "Number of Students",
        xlab = "Gender")


boxplot(Age ~ Accommodation,
        main = "Distribution of Age by Accommodation Type",
        xlab = "Accommodation Type",
        ylab = "Age (years)",
        outline = TRUE) # Shows outliers as points


  










