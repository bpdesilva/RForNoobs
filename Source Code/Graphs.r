 bmi = read.csv("//Path//bmi.csv",head=TRUE) #Assign csv to variable
 sortedBMI = sort(bmi$bmi)
 boxplot(sortedBMI) #boxplot graph
 boxplot(sortedBMI,horizontal=TRUE) #horizontal output
 plot(sortedBMI) #scatterplot graph
 BMISD = sd(sortedBMI) #Standard Deviation
 BMIMEAN = mean(sortedBMI) # Mean
 dnorm(sortedBMI, BMIMEAN,BMISD) # Normal Distribution
 plot(sortedBMI,dnorm(sortedBMI, BMIMEAN,BMISD)) # Bell Curve Test
 plot(sortedBMI,dnorm(sortedBMI, BMIMEAN,BMISD),type=("l")) #Bell Curve using lines
