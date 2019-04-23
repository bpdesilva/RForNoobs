library(ggplot2) # Import library
sal = read.csv("/Salaries.csv", header = TRUE) # Open CSV
#Parse in Data from CSV
ggplot(sal, aes(x = Position, y = Salary))+
  geom_point(aes(color = Salary), size = 3) +
  scale_color_gradientn(colors = c("#00AFBB", "#E7B800", "#FC4E07")) +
  theme(legend.position = "right")

ggplot(sal, aes(x = Position, y = Salary))+
  geom_point(aes(color = Position, size = Yrs.service), alpha = 0.25) +
  scale_color_manual(values = c("#00AFBB", "#E7B800", "#FC4E07")) +
  scale_size(range = c(0.5, 12))  # Adjust the range of points size