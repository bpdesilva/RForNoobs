library(ggplot2) # Import library
sal = read.csv("/Salaries.csv", header = TRUE) # Open CSV
#Parse in Data from CSV

#Density 
ggplot(data=sal, aes(sal$Salary)) + #Defines X Axis
  geom_histogram(aes(y=..density..), #Defines Y Axis
                 colour="black", fill="white") + # Bar Colors
  geom_density(alpha=.2, fill="#FF6666") + #Bell Curve Shade
  labs(title="Histogram for Salary", x="Salary", y="Density") + # Label Name
  geom_vline(aes(xintercept=median(sal$Salary),
                 color="median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(sal$Salary),
                 color="mean"), linetype="dashed",
             size=1) +
  scale_color_manual(name = "statistics", values = c(median = "blue", mean = "red"))

#Normal
salSD = sd(sal$Salary)
salMean = mean(sal$Salary)
ggplot(data=sal, aes(sal$Salary)) +
  stat_function(fun = dnorm, args = c(mean = salMean, sd = salSD), col = "tomato")+
  labs(title="Histogram for Salary", x="Salary", y="Density") + # Label Name
  geom_vline(aes(xintercept=median(sal$Salary),
                 color="median"), linetype="dashed",
             size=1) +
  geom_vline(aes(xintercept=mean(sal$Salary),
                 color="mean"), linetype="dashed",
             size=1) +
  scale_color_manual(name = "statistics", values = c(median = "blue", mean = "red"))
