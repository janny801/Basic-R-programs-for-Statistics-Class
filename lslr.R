# Define the data points
x <- c(1,2,3,4,5,6)
y <- c(15,19,18,31,18,31)

# Create a linear regression model
model <- lm(y ~ x)

# Extract residuals
residuals <- resid(model)

# Adjust plotting layout for better visibility
par(mfrow = c(2, 1), mar = c(5, 5, 4, 2) + 0.1)  # 2 rows, 1 column

# Plot scatter plot with regression line
plot(x, y, main = "Scatter Plot with LSRL", xlab = "X Values", ylab = "Y Values", pch = 16, col = "blue",
     ylim = c(0, max(y) + 5))  # Set vertical axis starting from 0, counting by 5
axis(2, seq(0, max(y) + 5, by = 5))  # Manually set y-axis ticks at intervals of 5
abline(model, col = "red", lwd = 2)

# Plot residuals with x-axis at y = 0
plot(x, residuals, main = "Residual Plot", xlab = "X Values", ylab = "Residuals", pch = 16, col = "blue",
     ylim = c(floor(min(residuals)), ceiling(max(residuals))), axes = FALSE)  # Disable default axes
axis(2, seq(floor(min(residuals)), ceiling(max(residuals)), by = 1))  # Y-axis ticks by 1
axis(1, at = x, pos = 0)  # Force x-axis to be at y = 0
abline(h = 0, col = "black", lwd = 2)  # Draw reference line at y = 0

# Reset plotting layout
par(mfrow = c(1, 1))
