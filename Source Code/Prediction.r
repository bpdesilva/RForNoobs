sal = read.csv("Salaries.csv", header = TRUE)
Salary = sal$Salary
SincePhd = sal$Yrs.since.phd
Model = lm (Salary ~SincePhd)
predict(Model,data.frame(SincePhd=2)))
corval = cor(salary,SincePhd,method="pearson")