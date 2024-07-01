library(tidyverse)

apple_data <- read_csv("apple_data.csv")

# returns
returns <- diff(log(apple_data$price))
apple_data <- apple_data[-1, ]
apple_data$returns <- returns

write.csv(apple_data, "apple_data.csv", row.names = FALSE)

