# Load the mtcars dataset
data(mtcars)

# View first few rows (optional)
head(mtcars)

# --- i. Scatter Plot: Horsepower vs Miles per Gallon ---
# Shows relationship and adds a trend line
plot(mtcars$hp, mtcars$mpg,
     main = "Scatter Plot: Horsepower vs Miles per Gallon",
     xlab = "Horsepower (hp)",
     ylab = "Miles per Gallon (mpg)",
     pch = 19, col = "blue")

# Add linear regression trend line
abline(lm(mpg ~ hp, data = mtcars), col = "red", lwd = 2)

# --- ii. Box Plot: MPG across Cylinder Categories ---
boxplot(mpg ~ cyl, data = mtcars,
        main = "Box Plot: MPG by Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon (mpg)",
        col = c("lightblue", "lightgreen", "lightcoral"))

# --- iii. Histogram: Distribution of Car Weights ---
hist(mtcars$wt,
     main = "Histogram: Distribution of Car Weights",
     xlab = "Weight (1000 lbs)",
     col = "orange",
     border = "white",
     breaks = 8)   # customize number of bins
