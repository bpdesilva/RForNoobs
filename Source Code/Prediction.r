sal = read.csv("Salaries.csv", header = TRUE)
ServiceYears = sal$Yrs.service
Salary = sal$Salary
SincePhd = sal$Yrs.since.phd
Model = lm (Salary ~SincePhd+ServiceYears)
predict(Model,data.frame(SincePhd=2,ServiceYears=3)))
corval = cor(salary,SincePhd,method="pearson")