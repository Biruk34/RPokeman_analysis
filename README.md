---

# Pokémon Dataset Analysis

## Background

This project involves the analysis of the Kaggle Pokémon dataset, focusing on various attributes of Pokémon creatures. The dataset includes attributes such as HP, Attack, Defense, Special Attack, Special Defense, Speed, Generation, and whether the Pokémon is legendary. The aim of this project is to explore correlations and relationships among these attributes and determine their statistical significance.

## Analysis Overview

The analysis is divided into several code sections, each addressing different aspects of the dataset and employing various statistical techniques.

### Code #1 - Chi-Square Analysis

In this section, the relationship between the categorical explanatory variable "Generation" and the categorical response variable "Legendary" is examined using the Chi-Square Test of Independence. The dataset is preprocessed to create meaningful categories within the "Generation" variable. The results suggest the absence of statistical evidence for an association between Generation and Legendary status among Pokémon.

### Code #2 - ANOVA Analysis

This section focuses on the relationship between a Pokémon's Attack Power and their Legendary status. The Analysis of Variance (ANOVA) test is utilized to determine if there is a significant difference in Attack Power means between legendary and non-legendary Pokémon. The results indicate a statistically significant difference in attack power between the two groups.

### Code #3 - Simple Linear Regression Analysis

Here, a simple linear regression analysis is performed to explore the correlation between the Special Attack and Attack attributes. The results suggest a lack of a statistically significant relationship between the two attributes due to the scattered nature of the data points.

### Code #4 - Multiple Linear Regression Analysis

In this section, a multiple linear regression analysis is conducted with the response variable "HP" and explanatory variables "Attack" and "Defense." The results indicate weak correlations between HP, Attack, and Defense attributes.

### Code #5 - Multiple Regression with Categorical Variable

This section extends the multiple regression analysis to include a categorical variable, "Type 1." The aim is to explore the relationships between HP, Special Attack, and Pokémon types. The results indicate limited predictive power and weak correlations among the variables.

## Limitations

Throughout the analysis, several limitations should be noted. The dataset covers only a subset of Pokémon generations (generations 1-6 out of 1-8), which might impact the generalizability of the results. Additionally, some analyses reveal weak correlations and low R-squared values, suggesting that the models do not capture much of the variability in the data.

---

## Project Files

Here's a list of the `.r` files included in this project and a brief description of their contents:

1. `chi_square_analysis.r`: This file contains the code and analysis for the Chi-Square Analysis, exploring the relationship between Generation and Legendary status among Pokémon.

2. `anova_analysis.r`: In this file, you'll find the code and analysis for the ANOVA Analysis, which investigates the difference in Attack Power means between legendary and non-legendary Pokémon.

3. `simple_linear_regression.r`: This file contains the code and analysis for the Simple Linear Regression Analysis, exploring the correlation between Special Attack and Attack attributes.

4. `multiple_linear_regression.r`: Here, you'll find the code and analysis for the Multiple Linear Regression Analysis, examining the relationships between HP, Attack, and Defense attributes.

5. `multiple_regression_categorical.r`: This file contains the code and analysis for the Multiple Regression Analysis with a categorical variable, exploring the relationships between HP, Special Attack, and Pokémon types.

Feel free to explore each file for detailed code, comments, and analysis results.

---

