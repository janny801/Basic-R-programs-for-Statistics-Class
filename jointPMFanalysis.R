# define the possible values of x and y
x = 0:3
y = 0:2

# create a data frame of all (x,y) pairs
df = expand.grid(x = x, y = y)

# compute the joint pmf f(x,y) = (x + 2*y) / 42
df$f = (df$x + 2 * df$y) / 42

# p(x <= 2, y = 1)
pa = sum(df$f[df$x <= 2 & df$y == 1])

# p(x + y = 4)
pb = sum(df$f[df$x + df$y == 4])

# e(x + y)
e_x_plus_y = sum((df$x + df$y) * df$f)

# e(x * y)
e_xy = sum(df$x * df$y * df$f)

# print results
print(pa)          # ≈ 0.2142857
print(pb)          # ≈ 0.2619048
print(e_x_plus_y)  # ≈ 3.238095
print(e_xy)        # ≈ 2.428571
