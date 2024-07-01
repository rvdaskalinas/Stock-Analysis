library(tidyverse)

apple_data <- read.csv("apple_data.csv")

# summary statistics
summary(apple_data)

# boxplots
boxplot(apple_data$price, main = "Boxplot of Apple Stock Prices", ylab = "Price")
boxplot(apple_data$returns, main = "Boxplot of Apple Stock Returns", ylab = "Returns")

# Price plot
ggplot(apple_data, aes(x = Date, y = price, group = 1)) +
  geom_line() +
  theme_minimal() +
  labs(title = "Apple stock price overtime", x = "Date", y = "Price") 
ggsave("results/apple_stock_price.png")

# Returns plot
ggplot(apple_data, aes(x = Date, y = returns, group = 1)) +
  geom_line() +
  theme_minimal() +
  labs(title = "Apple stock returns overtime", x = "Date", y = "Returns") 
ggsave("results/apple_stock_returns.png")

