
# ============================================================
# Script: wrangle-data.R
# Purpose: Inspect, prepare, and save the murders dataset
# Project: murders
# ============================================================


# 1. Read the raw data ----------------------------------------

murders_raw <- read.csv("data/murders.csv")


# 2. Inspect the dataset --------------------------------------

# Display the first six rows
head(murders_raw)

# Check the structure and variable types
str(murders_raw)

# Display the variable names
names(murders_raw)

# Generate summary statistics
summary(murders_raw)


# 3. Check for missing values ---------------------------------

colSums(is.na(murders_raw))


# 4. Create a working copy ------------------------------------

murders_processed <- murders_raw


# 5. Calculate the murder rate --------------------------------

murders_processed$murder_rate <-
  (murders_processed$total / murders_processed$population) * 100000


# 6. Inspect the calculated murder rate -----------------------

head(murders_processed)

summary(murders_processed$murder_rate)


# 7. Save the processed dataset -------------------------------

save(
  murders_processed,
  file = "rda/murders_processed.rda"
)


# 8. Confirm that the file was saved --------------------------

list.files("rda")

