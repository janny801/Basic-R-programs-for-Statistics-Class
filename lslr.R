# Define the data points
x <- c(1,2,3,4,5,6)
y <- c(15,19,18,31,18,31)

# Create a linear regression model
model <- lm(y ~ x)

# Print the summary of the model in the terminal
print(summary(model))

# Extract slope (coefficient for x) and intercept
intercept <- coef(model)[1]
slope <- coef(model)[2]

# Find a better position for the equation (midpoint of regression line)
mid_x <- mean(range(x))  # Midpoint of x-values
mid_y <- intercept + slope * mid_x  # Predicted y-value at midpoint

# Adjust plotting layout for better visibility
par(mfrow = c(2, 1), mar = c(5, 5, 4, 2) + 0.1)  # 2 rows, 1 column

# Plot scatter plot with regression line
plot(x, y, main = "Scatter Plot with LSRL", xlab = "X Values", ylab = "Y Values", pch = 16, col = "blue",
     ylim = c(0, max(y) + 5))  # Set vertical axis starting from 0, counting by 5
axis(2, seq(0, max(y) + 5, by = 5))  # Manually set y-axis ticks at intervals of 5
abline(model, col = "red", lwd = 2)  # Add regression line

# Display equation near the regression line
eq_text <- paste0("y = ", round(intercept, 2), " + ", round(slope, 2), "x")
text(mid_x, mid_y + 2, eq_text, col = "red", cex = 1.2, font = 2)  # Shift text slightly above the line

# Plot residuals with x-axis at y = 0
plot(x, residuals, main = "Residual Plot", xlab = "X Values", ylab = "Residuals", pch = 16, col = "blue",
     ylim = c(floor(min(residuals)), ceiling(max(residuals))), axes = FALSE)  # Disable default axes
axis(2, seq(floor(min(residuals)), ceiling(max(residuals)), by = 1))  # Y-axis ticks by 1
axis(1, at = x, pos = 0)  # Force x-axis to be at y = 0
abline(h = 0, col = "black", lwd = 2)  # Draw reference line at y = 0

# Reset plotting layout
par(mfrow = c(1, 1))
