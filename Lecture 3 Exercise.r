b0=7
b1=2
x=rnorm(n=50, mean = 3, sd=1)
u=rnorm(50)
Y=b0+b1*x+u
model1 <- lm(Y~x)
model1$coefficients
model1$coefficients[1] 
model1$coefficients[2] 
t.test(model1$coefficients)
vector_b0 <- numeric(1000)
vector_b1 <- numeric(1000)
for (i in 1:1000) {
  x=rnorm(50, mean = 10, sd=1) 
  u=rnorm(50) 
  Y=b0+b1*x+u 
  model1 <- lm(Y~x)
  vector_b0[i] <- model1$coefficients[1] 
  vector_b1[i] <- model1$coefficients[2] 
}
mean(vector_b0)
mean(vector_b1)
model1$coefficients[1] 
model1$coefficients[2] 
## They're close to the parameters and the OLS estimators are unbiased

par(mfrow=c(1,2))
hist(vector_b0, main = expression(beta[0]),col='steelblue')
hist(vector_b1, main = expression(beta[1]), col = 'red')


# SAMPLE SIZE=100
vector_b0_200 <- numeric(1000)
vector_b1_200 <- numeric(1000)
for (i in 1:1000) {
  x=rnorm(200, mean = 10, sd=1) 
  u=rnorm(200) 
  Y=b0+b1*x+u 
  model1 <- lm(Y~x)
  vector_b0_200[i] <- model1$coefficients[1] 
  vector_b1_200[i] <- model1$coefficients[2] 
}


vector_b0_1000 <- numeric(1000)
vector_b1_1000 <- numeric(1000)
for (i in 1:1000) {
  x=rnorm(1000, mean = 10, sd=1) 
  u=rnorm(1000) 
  Y=b0+b1*x+u 
  model1 <- lm(Y~x)
  vector_b0_1000[i] <- model1$coefficients[1]
  vector_b1_1000[i] <- model1$coefficients[2] 
}


par(mfrow=c(1,3))
hist(vector_b0, xlim=c(-2,8),main = "Sample=50")
hist(vector_b0_200,xlim=c(-2,8), main = "Sample=200")
hist(vector_b0_1000,xlim=c(-2,8), main = "Sample=1000")
hist(vector_b1, xlim = c(3.4,4.6),main = "Sample=50")
hist(vector_b1_200, xlim = c(3.4,4.6),main = "Sample=200")
hist(vector_b1_1000, xlim = c(3.4,4.6),main = "Sample=1000")

par(mfrow=c(1,1))

## The OLS estimators are consistent