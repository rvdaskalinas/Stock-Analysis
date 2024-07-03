# Stock Analysis

This repository contains scripts to analyze Apple stock prices and make a 5-day ahead price forecast. It was mostly done to showcase proper structure compared to my other projects which are practice scripts or parts of more advanced analysis using other programs (EViews, Gretl, Excel etc).

## Usage

Fetching Data: The `01_data.R` script fetches historical stock price data for Apple from Yahoo Finance and saves it as a CSV file in the data/ directory.

Cleaning Data: The `02_data_fix.R` script reads the raw data, cleans it, and calculates log returns. The cleaned data is saved back to the data/ directory.

Exploratory Analysis: The `03_exploratory_analysis.R` script performs exploratory data analysis and generates visualizations saved in the results/ directory.

Calculating Metrics: The `04_metrics.R` script calculates moving averages and volatility, saving the results in the results/ directory.

Predictive Modeling: The `05_arima_modeling.R` script builds an ARIMA model to forecast future stock prices, saving the model and forecasts in the results/ directory.

## Requirements

-   `quantmod`
-   `tidyverse`
-   `TTR`
-   `forecast`
-   `here`

