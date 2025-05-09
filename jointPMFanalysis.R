# define x and y value ranges
x_vals = 0:3
y_vals = 0:2

# create grid of all (x,y) pairs
joint_df = expand.grid(x = x_vals, y = y_vals)

# compute joint pmf = (x + 2*y) / 42
joint_df$pmf = (joint_df$x + 2 * joint_df$y) / 42

# p(x <= 2, y = 1)
prob_xle2_y1 = sum(joint_df$pmf[joint_df$x <= 2 & joint_df$y == 1])

# p(x + y = 4)
prob_x_plus_y_eq4 = sum(joint_df$pmf[joint_df$x + joint_df$y == 4])

# e(x + y)
exp_x_plus_y = sum((joint_df$x + joint_df$y) * joint_df$pmf)

# e(x * y)
exp_xy = sum(joint_df$x * joint_df$y * joint_df$pmf)

# print results
cat("P(X <= 2, Y = 1) =", prob_xle2_y1, "\n")
cat("P(X + Y = 4) =", prob_x_plus_y_eq4, "\n")
cat("E(X + Y) =", exp_x_plus_y, "\n")
cat("E(X * Y) =", exp_xy, "\n")


