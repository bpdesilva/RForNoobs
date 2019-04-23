install.packages("ggplot2") #Install GGPLOT
library(ggplot2) #Import library
sal = read.csv("/Salaries.csv", header = TRUE) #Import File
sortedSalary = sort(sal$Salary) #sort values
salSD = sd(sortedSalary) # Standard Deviation  
salMean= mean(sortedSalary) # Mean
dnorm(sortedSalary,salMean,salSD) # Density Function
plot(sortedSalary, dnorm(sortedSalary,salMean,salSD), type = "l") # Plot Bell Curve Normally
Norms = dnorm(sortedSalary,salMean,salSD) # assign density function
Postion = as.factor(sal$Position) # assign factor
saldf = data.frame("Salary" = sortedSalary,"Distribution" = Norms) # assign values to data frame
ggplot(saldf, aes(x = Salary, y = Distribution)) + geom_point()  # Plot Bell Curve 
dataFrames = data.frame("Salary" = sortedSalary, "Distribution" = Norms, "Position" = Postion) # assign values to data frame
ggplot(dataFrames, aes(x = Salary, y = Distribution, color=Position)) + geom_point() # Bell Curve with Position Colors