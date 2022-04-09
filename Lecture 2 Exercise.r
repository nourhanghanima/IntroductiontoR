p_sample <- rnorm(100, 0,1)
t_by_hand <- mean(p_)/sqrt(var(p_sample)/100)
t_by_hand
t.test(p_sample)
t.test(p_sample)$statistic==mean(p_sample)/sqrt(var(p_sample)/100) 

#we accept the null hypothesis 

vector1 <- replicate(expr = mean(rnorm(100)), n=1000)
hist(vector1)
