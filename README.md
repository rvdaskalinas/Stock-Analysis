# Stock Analysis

This repository contains scripts to analyze Apple stock prices and make a 5-day ahead price forecast. It was mostly done to showcase proper structure compared to my other projects which are practice scripts or part of more advanced analysis using other programs (EViews, Gretl, Excel etc)

## Project Structure

Stock-Market-Analysis/
├── data/
│ └── apple_data.csv
├── results/
│ ├── apple_forecast.png
│ ├── apple_forecasts.cvs
│ ├── apple_stock_price.png
│ ├── apple_stock_returns.png
│ └── arima_model.rds
├── scripts/
│ ├── 01_data.R
│ ├── 02_data_fix.R
│ ├── 03_exploratory_analysis.R
│ ├── 04_metrics.R
│ ├── 05_arima_modeling.R
│ └── 06_main.R
└── README.md

## Requirements

- quantmod
- tidyverse
- TTR
- forecast
- here
- ggplot2




