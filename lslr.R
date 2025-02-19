x= c(1,2,3,4,5,6)
y= c(15,19,18,31,18,31) 

model <- lm(y~x)

residuals <- resid(model)
fitted_values <- fitted(model) 

plot(x, residuals, main = "residual plot" , xlab= "x values" , ylab = "residuals")