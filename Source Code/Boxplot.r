library(ggplot2) # Import library
sal = read.csv("/Salaries.csv", header = TRUE) # Open CSV
#Parse in Data from CSV
ggplot(sal, aes(x = Position, y = Salary)) +
  geom_boxplot(outlier.colour = "blue", fill="grey85") +
  labs(title = "Impact on Salary based on Position")