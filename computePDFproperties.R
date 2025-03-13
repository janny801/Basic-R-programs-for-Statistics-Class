# Solve for the constant k to satisfy the density function condition
# We want the integral of f(x) from 0 to 1 to be 1.

# Define the probability density function f(x) = kx(1 - x)
f = function(x, k) { k * x * (1 - x) }

# Integrate f(x) over the range [0, 1] to find the normalization condition
# We set the integral equal to 1 and solve for k
integral_result = integrate(f, lower = 0, upper = 1, k = 1)$value
cat("Integral result:", integral_result, "\n")

# Set the integral equal to 1 and solve for k
# integral_result represents the value of the integral, so we solve for k
k = 1 / integral_result
cat("The value of k =", k, "\n")  # k = 6 as we computed

# Now we can use this value of k in the rest of the calculations

# Define the probability density function using the computed value of k
f = function(x) { k * x * (1 - x) }

# Compute P(0.4 < X < 1)
# Integrating the pdf from 0.4 to 1
prob_b = integrate(f, lower = 0.4, upper = 1)$value
cat("P(0.4 < X < 1) =", prob_b, "\n")

# Compute P(X ≤ 0.4)
# Integrating the pdf from 0 to 0.4
prob_a = integrate(f, lower = 0, upper = 0.4)$value
cat("P(X ≤ 0.4) =", prob_a, "\n")

# Compute P(X < 0.8)
# Integrating the pdf from 0 to 0.8
prob_c = integrate(f, lower = 0, upper = 0.8)$value
cat("P(X < 0.8) =", prob_c, "\n")

# Compute conditional probability P(X < 0.4 | X < 0.8)
# Using the formula: P(A | B) = P(A ∩ B) / P(B)
# Here, P(A) = P(X < 0.4), and P(B) = P(X < 0.8)
prob_conditional = prob_a / prob_c
cat("P(X < 0.4 | X < 0.8) =", prob_conditional, "\n")

# Compute Expected Value E[X] (Mean)
# Integral of x * f(x) over the range [0,1]
mean_x = integrate(function(x) x * f(x), lower = 0, upper = 1)$value
cat("Mean(X) =", mean_x, "\n")

# Compute Expected Value E[X^2]
# Integral of x^2 * f(x) over the range [0,1]
Ex2 = integrate(function(x) x^2 * f(x), lower = 0, upper = 1)$value

# Compute Variance Var(X)
# Variance formula: Var(X) = E[X^2] - (E[X])^2
variance_x = Ex2 - (mean_x^2)
cat("Variance(X) =", variance_x, "\n")
