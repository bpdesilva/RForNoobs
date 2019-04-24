library(ggplot2) # Import library
sal = read.csv("/Salaries.csv", header = TRUE) # Open CSV

# Density Random to fit data with Legend & Overlay fill for density plot
gpplot(sal,aes(x=Salary,fill=Position))+
    geom_density(col=NA)

# Density Random to fit data with Legend & Opaque Overlay fill for density plot
ggplot(sal, aes(Salary, fill = Position, colour = Position)) +
  geom_density(alpha = 0.1)