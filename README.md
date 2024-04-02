# UltraSignup Marathon Race Data Analysis -(Excel-Python-SQL-Power-BI)

Welcome to the UltraSignup Marathon Race Data Analysis project! This repository contains the code and data used to extract, clean, transform, and analyze marathon race data from UltraSignup.

## Overview

UltraSignup is a platform that provides information about various ultra marathon races. In this project, we aimed to extract insights from the race data to understand participant demographics, race trends, and geographical distributions.

## Data Extraction and Cleaning

- The data was initially extracted from UltraSignup's database and saved into an Excel spreadsheet.
- We performed extensive data cleaning and transformation tasks, including:
  - Dropping unwanted columns that were irrelevant to our analysis.
  - Treating missing values using appropriate methods to ensure data integrity.
  - Adding new columns like latitude and longitude for geographical visualization purposes.

## Data Analysis

- After cleaning and transforming the data, we loaded it into a MySQL database for further analysis.
- We utilized SQL queries to retrieve meaningful insights from the data, such as participant demographics, race statistics, and trends over time.

## Visualization

- To visually represent the insights gained from the data, we integrated the cleaned dataset with Power BI.
- Power BI was used to create interactive dashboards and visualizations, allowing for easy exploration of the data and identification of key trends and patterns.

## Repository Structure

- `data_extraction`: Contains scripts used for extracting data from UltraSignup and saving it to an Excel spreadsheet.
- `data_cleaning`: Includes scripts for cleaning and transforming the raw data, as well as adding geographical information.
- `database_integration`: Contains SQL scripts for creating tables in MySQL and loading the cleaned data.
- `powerbi_integration`: Includes the Power BI file (.pbix) used to build the interactive dashboard.


## Feedback
Feel free to contribute to this project by opening issues, suggesting improvements, or submitting pull requests.

Happy analyzing!

