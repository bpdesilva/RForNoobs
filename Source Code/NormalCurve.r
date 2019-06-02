library(ggplot2) # Import library
dataset = read.csv("/Salaries.csv", header = TRUE) # Open CSV

salaryMean = mean(dataset$Salary)
salarySD = sd(dataset$Salary)

ggplot(data=dataset, aes(dataset$Salary)) +
  geom_histogram(aes(y=..density..),
                 colour="black", fill="white") +
  stat_function(fun = dnorm, args = c(mean = salaryMean, sd = salarySD), col="#32CD32", geom = 'area', fill = '#00FF00', alpha = 0.2)+
  labs(title="Normal Distribution - Salary", x="Salary", y="Density")