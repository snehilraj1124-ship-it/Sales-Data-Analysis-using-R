# Sales Data Analysis using R

# Read CSV File
sales <- read.csv("sales_data.csv")

# Display Dataset
print("Sales Dataset")
print(sales)

# Total Sales
total_sales <- sum(sales$Sales)

# Average Sales
average_sales <- mean(sales$Sales)

# Highest Sales
highest_sales <- max(sales$Sales)

# Lowest Sales
lowest_sales <- min(sales$Sales)

# Display Results
cat("Total Sales:", total_sales, "\n")
cat("Average Sales:", average_sales, "\n")
cat("Highest Sales:", highest_sales, "\n")
cat("Lowest Sales:", lowest_sales, "\n")

# Summary Statistics
summary(sales)

# Bar Chart
barplot(
  sales$Sales,
  names.arg = sales$Month,
  col = "steelblue",
  main = "Monthly Sales",
  xlab = "Month",
  ylab = "Sales"
)

# Pie Chart
pie(
  sales$Sales,
  labels = sales$Month,
  col = rainbow(nrow(sales)),
  main = "Sales Distribution"
)
