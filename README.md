# Bank_Customer_churn_Analysis

## Overview
This project analyzes customer churn in the banking sector using logistic regression.
The goal is to identify key factors influencing customer attrition and provide
actionable insights to improve customer retention strategies.

## Dataset
- Source: Bank Customer Churn Dataset (Kaggle)
- Observations: 1000 customers
- Target Variable: Exited (Customer Churn)
- Key Features:
  - Age, Geography, Gender
  - Account Balance, Number of Products
  - Active Membership Status
  - Satisfaction Score, Complaints
  - Reward Points Earned

## Methodology
1. Exploratory Data Analysis (EDA)
2. Logistic Regression with all predictors
3. Backward feature selection
4. Feature transformation (log of number of products)
5. Model diagnostics and validation

## Model Evaluation
- Wald Test
- ANOVA
- Odds Ratios with 90% Confidence Intervals
- Multicollinearity (VIF)
- Hosmer–Lemeshow Goodness-of-Fit Test
- AIC / BIC Model Comparison

## Results
- Age, Active Membership, Satisfaction Score, Complaints, Points Earned, and
  Number of Products were identified as key drivers of churn.
- The final model demonstrated good fit and interpretability.

## Visualizations
- Marginal effect plots
- Boxplots comparing churn vs non-churn customers
- Leverage vs residual diagnostics

## Tools & Technologies
- R
- Logistic Regression
- Statistical Inference
- Data Visualization

## Key Takeaways
- Active and satisfied customers are significantly less likely to churn.
- Customer complaints have a strong positive impact on churn probability.
- Behavioral and engagement variables are more predictive than demographics alone.

## References
- Kaggle: Bank Customer Churn Dataset
- Academic and CRM research articles on churn and retention

