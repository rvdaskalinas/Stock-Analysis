library(tidyverse)
library(forecast)

apple_data <- read.csv("apple_data.csv")
apple_data$Date <- as.Date(apple_data$Date, format = "%Y-%m-%d")

# ts conversion
ts_price <- ts(apple_data$price, start = c(2010, 1), frequency = 252)

# ARIMA, 5-days ahead forecast
fit <- Arima(ts_price, order = c(4,1,1), include.drift = TRUE)
forecast <- forecast(fit, h = 5)
print(forecast)

# Diagnostics
summary(fit)
autoplot(fit)
checkresiduals(fit)

# Extracting the last 20 days of the data
last_20 <- tail(apple_data, 20)

# Combining the last 20 days and the forecasted 5 days
last_date <- max(last_20$Date)
forecast_dates <- seq.Date(from = last_date + 1, by = "days", length.out = 5)
forecast_values <- as.numeric(forecast$mean)
plot <- data.frame(
  Date = c(last_20$Date, forecast_dates),
  price = c(last_20$price, forecast_values),
  Type = c(rep("Actual", nrow(last_20)), rep("Forecast", length(forecast_values)))
)

ggplot(plot, aes(x = Date, y = price, color = Type)) +
  geom_line() +
  geom_point() +
  theme_minimal() +
  labs(title = "Apple Inc. Stock Price 5-Day Forecast", x = "Date", y = "Price") +
  scale_color_manual(values = c("Actual" = "blue", "Forecast" = "red"))
ggsave("results/apple_forecast.png")

# Save model and forecasts
saveRDS(fit, "results/arima_model.rds")
write_csv(as.data.frame(forecast), "results/apple_forecasts.csv")

