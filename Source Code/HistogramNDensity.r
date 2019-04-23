library(ggplot2) # Import library
sal = read.csv("/Salaries.csv", header = TRUE) # Open CSV
#Parse in Data from CSV
ggplot(data=sal, aes(sal$Salary)) + #Defines X Axis
  geom_histogram(aes(y=..density..), #Defines Y Axis
                 colour="black", fill="white") + # Bar Colors
  geom_density(alpha=.2, fill="#FF6666") + #Bell Curve Shade
  labs(title="Histogram for Salary", x="Salary", y="Density") + # Label Name
  geom_vline(aes(xintercept=mean(sal$Salary)), # Mean Dotted Line   
             color="red", linetype="dashed", size=1) # Dotted Line Formatting