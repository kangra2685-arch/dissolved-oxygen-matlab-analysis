# Dissolved Oxygen Analysis and Modeling Using MATLAB

A MATLAB-based data analysis and modeling project investigating
seasonal changes in dissolved oxygen in the East Sea.

## Project Overview

Dissolved oxygen (DO) is an important environmental parameter
in marine ecosystems and is influenced by factors such as water
temperature, atmospheric pressure, and water circulation.

This project analyzes dissolved oxygen data from the East Sea
at a depth of 50 m and develops a simple mathematical model
using MATLAB to examine temporal variations in the data.

The project includes data processing, visualization, polynomial
curve fitting, and exploratory prediction of future values.

## Data

The dissolved oxygen data were obtained from the Annual Report
of Oceanographic Observations published by the National Institute
of Fisheries Science (NIFS), Korea.

Measurements from the East Sea at a depth of 50 m were selected
for six months:

| Month | Dissolved Oxygen (mL/L) |
|------:|------------------------:|
| 2 | 5.5 |
| 4 | 5.0 |
| 6 | 5.0 |
| 8 | 4.5 |
| 10 | 3.5 |
| 12 | 4.0 |

The original dissolved oxygen concentrations were converted into
flow-related values using the cross-sectional area and average
current velocity used in the project.

## MATLAB Analysis

The analysis was implemented in MATLAB and consists of three
main components.

### 1. Data Processing

`Q_Oxi_data.m`

- Defines the dissolved oxygen concentration data
- Performs unit conversions
- Calculates flow-related dissolved oxygen values
- Generates the monthly dataset used for analysis
- Performs polynomial fitting and visualization

### 2. Data Visualization

`plot_data_function.m`

- Plots the calculated dissolved oxygen flow values by month
- Displays individual data points and their numerical values
- Visualizes seasonal variation in the dataset

### 3. Polynomial Curve Fitting

`fit_and_plot_function.m`

- Applies second-order polynomial regression using `polyfit`
- Evaluates the fitted model using `polyval`
- Compares the measured data with the fitted curve
- Displays the resulting polynomial model

## Polynomial Model

A second-order polynomial was fitted to the monthly dataset:

Q(x) = 5.8156x² - 314.0430x + 7816.1700

where `x` represents the month and `Q` represents the
flow-related dissolved oxygen value.

## Exploratory Prediction

The fitted model was also used in the original project to explore
how the modeled quantity would change when extrapolated beyond
the observed data.

The exercise additionally compared the second-order model with
a higher-order polynomial and demonstrated that increasing model
complexity does not necessarily improve predictive reliability,
as higher-order fitting can lead to overfitting.

> Note: These extrapolated values were part of an introductory
> MATLAB modeling exercise and should not be interpreted as
> validated environmental forecasts.

## Skills Demonstrated

- MATLAB programming
- Data processing and unit conversion
- Scientific data visualization
- Polynomial regression
- Curve fitting
- Basic predictive modeling
- Interpretation of environmental data

## Files

- `Q_Oxi_data.m` — Main data processing and analysis script
- `plot_data_function.m` — Monthly data visualization function
- `fit_and_plot_function.m` — Polynomial fitting and visualization function
- `Raw_Data.pdf` — Original Korean source data used in the project
- `Project_Report_Korean.pdf` — Original project report written in Korean

## Language Note

The original project was completed in Korean. The source code
therefore contains some Korean comments and figure labels.
This README provides an English overview of the methodology,
implementation, and results.
