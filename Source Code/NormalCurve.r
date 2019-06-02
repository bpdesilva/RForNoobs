library(ggplot2) # Import library
sal = read.csv("/Salaries.csv", header = TRUE) # Open CSV

ggplot(data=dataset, aes(dataset$Price)) +
  geom_histogram(aes(y=..density..),
                 colour="black", fill="white") +
  stat_function(fun = dnorm, args = c(mean = salaryMean, sd = salarySD), col="#32CD32", geom = 'area', fill = '#00FF00', alpha = 0.2)+
  labs(title="Normal Distribution - Salary", x="Salary", y="Density")