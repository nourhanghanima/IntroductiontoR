data(mtcars)
str(mtcars)
cormtx <- data.frame(cor(mtcars))
View (cormtx) #correlation matrix of variables, no variables perfectly correlated with any other variable 
summary(mtcars)
model_all <- lm(mpg~.,mtcars) #checking which variables have an effect on mpg
model_opt <- step(model_all,direction="both",trace=F)
summary(model_opt) #only weight, qsec, and transmission have a statistically significant effect on miles/gallon
#R-squared is 0.8497, which means the variables weight, qsec and the transmission can explain about 85% of the variance in mpg
par(mfrow = c(2, 2))  
plot(model_all) #checking for heteroskedasticity, which is not present
lmtest <- bptest(model_all); lmtest #double checking with Breusch-Pagan test
mtcars$maxspeed <- rnorm(32, 100, 20) #adding a new variable, maximum car speed
model_new <- lm(mpg~.,mtcars) #checking which variables are significant after adding the new variable
model_opt2 <- step(model_new,direction="both",trace=F)
summary(model_opt2) #I would not keep the new variable in the regression because the only statistically significant variables are still weight, qsec, and am
model_allv <- lm(mpg~.,mtcars)
model_opt3 <- step(model_allv, direction="both", trace=F)
summary(model_opt3)
mcol <- cor(mtcars); mcol
#Running the regression with the dummy variable changes the results to horse power, weight, and highhp being statistically significant. qsec is no longer significant. 
m <- c(rnorm(1, 15, 7), rnorm(1, 6, 2), rnorm(1, 350, 50), rnorm(1, 100, 35), rnorm(1, 3, 0.5), rnorm(1,2,0.5), rnorm(1, 20, 4), 1, 1, rnorm(1,4,1), rnorm(1,2,1), rnorm(32, 100, 20), 0); m
df <- mtcars
rownames(df)[rownames(df) == 33] <- "Some Mercedes"
mtcars <- rbind(mtcars, m) #adding made up car to data
mtcars$highhp <- ifelse(mtcars$hp >100, 1, 0) #using ifelse to create dummy variable 'high horsepower'



