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

ggplot(sal, aes(x = Position, fill =Salary)) +
        geom_density(position="identity", alpha=0.6) +
        scale_x_continuous(name = "Mean ozone in\nparts per billion",
                           breaks = seq(0, 200, 25),
                           limits=c(0, 200)) +
        scale_y_continuous(name = "Density") +
        ggtitle("Density plot of mean ozone") +
        theme_bw() +
        theme(plot.title = element_text(size = 14, family = "Tahoma", face = "bold"),
              text = element_text(size = 12, family = "Tahoma")) +
        scale_fill_brewer(palette="Accent")