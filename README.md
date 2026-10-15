
# Murders Data Analysis Project

## 1. Project Overview

This project demonstrates a reproducible data-analysis workflow in R using state-level murder data.

The analysis calculates murder rates per 100,000 population, ranks states by their murder rates, and visualizes the five states with the highest rates.

## 2. Project Objectives

* Inspect and understand the dataset.
* Check for missing values.
* Calculate murder rates per 100,000 population.
* Rank states by murder rate.
* Create and save a bar chart.

## 3. Project Structure

* `data/`: Original CSV dataset.
* `scripts/`: R scripts for data acquisition, preparation, and analysis.
* `rda/`: Saved R objects containing processed data.
* `figs/`: Saved figures and visualizations.
* `outputs/`: Additional analysis outputs and reports.
* `murders.Rproj`: RStudio project file.

## 4. Scripts

* `scripts/download-data.R`: Script reserved for data acquisition.
* `scripts/wrangle-data.R`: Imports, inspects, prepares, and saves the dataset.
* `scripts/analysis.R`: Calculates rankings and creates the bar chart.

## 5. Key Variable

`murder_rate` is calculated as:

Murder rate = (Total murders / Population) × 100,000

## 6. Main Outputs

* `rda/murders_processed.rda`: Processed dataset.
* `figs/barplot.png`: Bar chart of the five states with the highest murder rates.

## 7. How to Reproduce the Analysis

1. Open `murders.Rproj` in RStudio.
2. Ensure the original dataset is available at `data/murders.csv`.
3. Run `scripts/wrangle-data.R`.
4. Run `scripts/analysis.R`.

The analysis uses relative file paths, allowing the project to be moved between computers when its directory structure is preserved.

## 8. Important Note

The analysis is descriptive and does not establish the causes of differences in murder rates.
