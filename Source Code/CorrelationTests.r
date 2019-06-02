dataset = read.csv("/Salaries.csv", header = TRUE) # Open CSV

# PARAMETRIC TEST
cor.test(dataset$Salary,dataset$Yrs.service,method="pearson", na.rm=TRUE)

# NON- PARAMETRIC TEST
cor.test(dataset$Salary,dataset$Yrs.service,method="spearman", na.rm=TRUE)
cor.test(dataset$Salary,dataset$Yrs.service,method="kendall", na.rm=TRUE)