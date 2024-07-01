library(quantmod)

# Apple stock price
getSymbols("AAPL", src = "yahoo", from = "2010-01-01", to = "2024-01-04")

# Dataframe
apple_data <- as.data.frame(AAPL$AAPL.Adjusted)
apple_data$Date <- index(AAPL)
colnames(apple_data) <- c("price", "Date")
apple_data$Date <- as.Date(apple_data$Date, format = "%Y-%m-%d")

write.csv(apple_data, "data/apple_data.csv", row.names = FALSE)
