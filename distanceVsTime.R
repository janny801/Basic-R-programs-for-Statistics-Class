# givens
x <- c(15, 16, 17, 18, 19, 20)
y <- c(42, 35, 45, 42, 49, 46)

# a: scatterplot
plot(x, y,
     main = "Commute Distance vs Time",
     xlab = "Distance (miles)",
     ylab = "Time (minutes)")

# b: fit linear model
model <- lm(y ~ x)

# c: r^2 model
r2 <- summary(model)$r.squared
print(r2)

# d: residual plot
plot(x, residuals(model),
     main = "Residuals vs Distance",
     xlab = "Distance (miles)",
     ylab = "Residuals")
abline(h = 0)

# e: test significance of slope
summary(model)
