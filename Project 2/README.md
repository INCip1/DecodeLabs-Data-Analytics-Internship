# Orders Dataset Exploratory Data Analysis
## Project Overview
The goal of this project was to analyze this orders dataset to understand patterns, trends, and distributions.
## Executive Summary
### Problem Statement 
This project explores an orders dataset to understand customer purchasing behaviour, product performance, acquisition channels, delivery outcomes, and changes in order value from 2023 to Q2 2025.

### Methodology
This project is built upon the data cleaning and validation in Project 1. In order to facilitate investigation I used descriptive statistics, categorical analysis, distribution visualization, bxplots for outlier investigation, and quarterly time series analysis.

### Key Findings
* Most orders are concentrated at lower value levels, with an average order value of 1,053.97 and a modal quantity of one item per order
* Online referral sources collectively generated more orders than traditional sources
* Total order value declined across much of 2024 before showing early signs of recovery in Q2 2025; printers drove the strongest demand rebound, while laptops maintained the highe AOV despite a downward trend.
### Recommendations
* Investigate the drivers of 2024 declines and the indicated 2025 recovery.
* Evaluate referral-channel performance using conersion and deliver-success rates.
* Examine high-value orders to ifentify opportunities to improve successful order completion and drive average order values from low to premium.

## Tools Used
All analysis was carried out in Microsoft Excel by means of Pivot Tables, Pivot Charts and the Data Analysis Toolkit add-in.

## Dataset Overview
The dataset was provided by DecodeLabs and covers Order details of various products from Q1 2023 to Q2 2025. It consists of 14 columns and 1201 rows (including headers). In order to investigate customer purchasing behaviour and financial trends overtime, the fields of TotalPrice, Quantity, Date and Products were focused on.

## Analysis Approach 
### Descriptive Statistics
A Basic statistical measure comprising but not restricted to Mean Median and mode, was taken of the numerical columns; Quantity, ItemsInCart, UnitPrice and TotalPrice

### Categorical analysis
A combination of Frequency tables adjoined by percentage parts and column charts were used to examine the distribution of categorical variables such as Product, CouponCode, PaymentMethod, ReferralSource, and OrderStatus. This helped identify the most common categories and compare their relative frequencies.

### Distribution Analysis
The Histogram were used toexamine the distribution of numerical variables, partivularly TotalPrice, to understand the spreas of order values and identify patterns such as skewness. 

### Outlier Investigation
Boxplots were used to detect potential ouliers within numerical variables. Identified outliers were further assessed to determine whether they represented data-quality issues or legitimate high-value transactions.

### Time Series Analysis
Quarterly trends in Total Order Value, Average Order Value and product performance were analysed from 2023 to Q2 2025 to identify changes in revenue patterns and product behaviour over time.

## Key Findings and Visual Evidence

### Customer Purchasing Behaviour
Descriptive statistics and distribution analysis were used to understand customer purchasing patterns, typical order values, and the spread of  transactions across the dataset.

[Descriptive Statistics Table](Images/table_Descriptive_Stats.png)
[Histogram](Images/Histogram.png)
[Boxplot](Images/boxplot_TotalPrice.png) 
#### Findings
* The dataset contains 1,200 transactions across 14 variables, with each record uniquely identified by OrderId and CustomerID.
* The average order value was … , while the most frequently purchased quantity was one item per order, indicating generally conservative purchasing behaviour.
* Order values are positively skewed, with most transactions concentrated at lower price levels.
* Boxplot analysis identified a few highvalue outliers. Further investigation confirmed these represented legitimate premium orders rather than data-quality issues.
### Product and Channel Performance 
Frequency analysis was conducted on product categories, coupon stage, referral sources, and payment methods to understand customer preferences and acquisition patterns
[Products](Images/column_chart_Products.png)
[Payment Method](Images/column_chart_PaymentMethod.png)
[Coupon Codes](Images/column_chart_CouponCodes.png)
[Referral Source](Images/column_chart_ReferralSource.png)

#### Findings
* No single product dominates total order value.
* Coupon usage was fragmented, although Free Shipping was the most frequently applied promotion
* Online referral channels collectively generated more customer traffic than traditional referral sources.
* Payment methods showed relatively even adoption, with online payments used slightly more frequently than alternative methods 

#### Interpretation
Customer demand is diversified across products and acquisition channels. While digital channels appear to be an effective source of customer acquisition, further analysis required to determine effectiveness.
### Delivery Performance
Delivered orders were analysed to examine delivery success, payment behaviour, referral patterns, and high-value transactions.

[Delivery Table](Images/table_Delivery_performance.png)
[Delivery chart stacked](Images/stacked_column_delivery.png)    [Delivery chart stacked 2](Images/%25_stacked_column_delivery.png)
[Delivery chart drilled](Images/stacked_column_delivery_referralsource_drill_down.png)  [Delivery chart drilled 2](Images/%25_stacked_column_delivery_referral_drill_down.png)

#### Findings
* Approximately one in five orders reached a Delivered status
* A small proportion of delivered orders were completed using alternative payment methods such as online payments and gift cards.
#### Interpretation
Successful deliveries represent only a portion of overall transactions, suggesting opportunities to investigate operational factors influencing order completion, particularly for higher-value purchases.

### Time-Series Analysis
Quarterly trends in Total Order Value, product-level Average Order Value (AOV), and quantity were analysed from 2023 to Q2 2025.

[Total Order Value trend](Images/line_chart_TOV.png)
[AOV trend](Images/line_chart_AOV.png)

#### Findings 
* Total Order Value declined throughout much of 2024, beforeshowing signs of recovery in Q2 2025.
* Printers experienced the strongest rebound in demand during Q2 2024, with quantity increasing by more than 118% compared with the previous quarter.
* Laptops consistently recorded the highest Average Order Value, although their AOV gradually declined adter peaking in Q1 2024.
* Chair AOV followed a relatively stable trend , declining gradually before recovering in 2025.

#### Interpretation
Although Order value experienced sustained weakness through much of the analysis period, the improving performance observed in early 2025 suggests the beginning of a potential recovery. Product-specific trends indicate that different categories contributed differently to periods of decline and recovery. 
