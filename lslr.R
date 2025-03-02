# Define the data points
x <- c(1,2,3,4,5,6)
y <- c(15,19,18,31,18,31)

# Create a linear regression model
model <- lm(y ~ x)

# Extract residuals and fitted values
residuals <- resid(model)

# Adjust plotting layout for better visibility
par(mfrow = c(2, 1), mar = c(5, 5, 4, 2) + 0.1)  # 2 rows, 1 column

# Plot scatter plot with regression line
plot(x, y, main = "Scatter Plot with LSRL", xlab = "X Values", ylab = "Y Values", pch = 16, col = "blue")
abline(model, col = "red", lwd = 2)

# Plot residuals
plot(x, residuals, main = "Residual Plot", xlab = "X Values", ylab = "Residuals", pch = 16, col = "blue")

# Reset plotting layout
par(mfrow = c(1, 1))
