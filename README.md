# Basic R programs for Statistics Class

## Overview
These programs are being written for a statistics class that I am currently taking at my university. The repository will be updated throughout the course as I work on different statistical concepts and analyses using R. Topics covered will include probability, descriptive statistics, hypothesis testing, regression, and more.

### Prerequisites
To run these programs, you need to have R installed on your system. You can download it from the official CRAN website:  
[https://cran.r-project.org/](https://cran.r-project.org/)

You can use either **Visual Studio Code (VS Code)** or **RStudio** to run these scripts:

- **VS Code** requires additional setup, including installing extensions and configuring the R language server (see below).
- **RStudio** is an alternative that comes with built-in support for running R scripts, visualizing plots, and managing projects, making it a convenient choice for many users.

# Setting Up R in VS Code

If you plan to use **Visual Studio Code (VS Code)** for running and editing R scripts, follow these steps:

1. **Install the R Extension** in VS Code.
2. **Open R and install the required language server package** by running:
   ```r
   install.packages("languageserver")
   ```
3. **Install the R Extension Pack** by Yuki Ueda from the VS Code marketplace.  
   (This extension pack provides additional tools to improve the R development experience.)
4. **Restart VS Code** to ensure all extensions are loaded correctly.

Once these steps are completed, you should be able to write and execute R scripts smoothly within VS Code.


# Repository Contents

## `lslr.R` Description

The `lslr.R` script performs a **simple linear regression** using a set of `x` and `y` values. It:

1. Defines two vectors (`x` and `y`) containing numeric data.
2. Creates a linear model (`lm(y ~ x)`) to predict `y` based on `x`.
3. Extracts **residuals** (differences between actual and predicted values).
4. Extracts **fitted values** (predicted `y` values from the model).
5. Plots the residuals against `x` in a **residual plot**, which helps visualize how well the model fits the data.


