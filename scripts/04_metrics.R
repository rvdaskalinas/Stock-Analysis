library(tidyverse)
library(TTR)

apple_data <- read.csv("apple_data.csv")

# SMA and Volatility
apple_data <- apple_data %>%
  mutate(SMA_50 = SMA(price, n = 50),
         SMA_200 = SMA(price, n = 200),
         Volatility = runSD(returns, n = 20, sample = FALSE))

write.csv(apple_data, "apple_data.csv")
