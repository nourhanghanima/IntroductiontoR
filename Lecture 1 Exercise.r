X1=sample(c('male', 'female'),1000, replace = TRUE) #Random sample of male and female
Gender = X1
X2=rnorm(1000, 1.7, 0.1) #Random sample from Normal distribution. N, mean, sd
Height = X2
X3=X2*45 + rnorm(1000,1,5)
Weight = X3
BMI <- Weight/Height^2
Obese <- BMI > 28 & Gender =='male' | BMI > 30 & Gender =='female'
Filter(any, df)
tab <- data.frame(Gender, Height,Weight, BMI, Obese); tab
plot(Weight, Height,
     xlab="Weight ", ylab="Height", pch=19) 



