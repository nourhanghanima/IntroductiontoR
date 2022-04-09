x=rnorm(n=1000, mean=5, sd=1)
u=rnorm(n=1000, mean=5, sd=2)
Y=rnorm(n=1000, mean=5, sd=4)
estimation <- lm(Y ~ x)
estimation
ls(t.test(Y))
estimation$coefficients
B1=estimation$coefficients[2]
summary(estimation)
ls(summary(estimation))
summary(estimation)$coefficients
c1=summary(estimation$coefficients)
c1[2]
se1=c1[4]
(t=(B1-0)/se1)
dof=1000-1-1
pvalue
pvalue=2*pnorm(t)
#We accept the null hypothesis.
#Null: the class size has no influence on the students test scores at 5% level.
library(lmtest)
bptest(estimation)
#Null hypothesis accepted. The error variances are all equal and there's no heteroskedasticity.