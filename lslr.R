# Define the data points
x <- c(1,2,3,4,5,6)
y <- c(15,19,18,31,18,31)

# Create a linear regression model
model <- lm(y ~ x)

# Extract residuals and fitted values
residuals <- resid(model)
fitted_values <- fitted(model)

# Set up a 1-row, 2-column plotting layout
par(mfrow = c(1, 2))

# Plot the original scatter plot with regression line
plot(x, y, main = "Scatter Plot with LSRL", xlab = "X Values", ylab = "Y Values", pch = 16, col = "blue")
abline(model, col = "red", lwd = 2)  # Add the least squares regression line

# Create the residual plot without a horizontal line
plot(x, residuals, main = "Residual Plot", xlab = "X Values", ylab = "Residuals", pch = 16, col = "blue")

# Reset the plotting layout to default
par(mfrow = c(1, 1))
