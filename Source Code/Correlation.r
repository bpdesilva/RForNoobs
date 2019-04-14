sal  = read.csv("//<Path>//")
sal
boxplot(sal$Salary)
boxplot(sal$Salary, horizontal = TRUE)
salSD= sd(sal$Salary) #Standard Deviation
meanSD = mean(sal$Salary)
plot(sal$Salary, dnorm(sal$Salary,meanSD,salSD), type = "1")
sortedSalary = sort(sal$Salary)
shapiro.test(sortedSalary)
plot(sortedSalary, dnorm(sortedSalary,meanSD,salSD), type = "l")
corVal = cor(sal$Salary,sal$Yrs.since.phd, method="pearson")
corVal
