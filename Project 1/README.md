# Orders Dataset Cleaning and Changelog
## Project Overview
The goal was to clean a raw dataset by handling missing values, duplicates, and incorrect data.
## Tools Used
All cleaning was carried out in Microsoft Excel using functions and features suchs as: 
*	Sort and filter
*	Find and Replace
*	Conditional Formatting
## Dataset Overview
*	14 columns and 1201 rows including headers.
*	Unique Identifiers: OrderId, CustomerId. 
## Data Quality Checks
Before cleaning, the dataset was reviewed to identify issues that could affect accuracy, consistency, or future analysis. The following checks were performed in Microsoft excel
*	Missing values
*	Unique Identifiers and Duplicate records
*	Text inconsistency
*	Data types and formats
*	Invalid or unusual values
## Cleaning Process
After completing the initial data quality checks, the dataset was cleaned in a structured sequence to ensure it was consistent, accurate, and analysis-ready.
1.	Data Inspection
The dataset range was first converted to a table to enhance the inspection process and then reviewed using filters and sorting to explore each column individually. 
2.	Handling Duplicates
Duplicate records were checked using OrderId as the unique identifier. Where duplicates were found, they were removed to ensure each transaction was represented only once in the dataset

3.	Standardising Categorical Values
Categorical fields such as product, referralsources and paymentmethods were reviewed for inconsistencies in spelling, spacing, or formatting. These values were standardized using the Find & Replace and manual correction.
4.	 Handling Missing or Blank Values
Blank entries in fields such as CouponCodes were reviewed. Where appropriate, missing coupon values were replaced with a consistent label (“N/A”).
5.	Data Type Consistency
Numeric and date fields were checked to ensure proper formatting. Order values and quantities were confirmed as numeric, while the date field was formatted for consistency to support time series analysis.
6. Final Validation
After cleaning, filters and summary checks were used to confirm that:
* All duplicate record had been removed 
* Categorical fields were consistent
* No critical fields contained unexpected blank values 
* The dataset structure remained intact for analysis 
The cleaned dataset was then used for exploratory data analysis in Project 2
