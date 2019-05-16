sal = read.csv("Salaries.csv", header = TRUE)
salary = sal$Salary
SincePhd = sal$Yrs.since.phd
corval = cor(salary,SincePhd,method="pearson")
corVal