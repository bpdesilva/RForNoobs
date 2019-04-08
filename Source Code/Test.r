sal  = read.csv("/Users/buwnaekadesilva/Desktop/Salaries.csv")
sortedSalary = sort(sal$Salary)
shapiro.test(sortedSalary) # Shapiro-Wilk Test
lillie.test(sal$Salary) # Lilliefors-Test
ad.test(sal$Salary) # Anderson-Darling Test