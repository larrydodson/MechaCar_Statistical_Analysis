# MechaCar_Statistical_Analysis
UTMCC DataViz Module_15, R and Statistical Analysis

---

## Contents 
  * Overview
    - Purpose
    - Resources
  * Results
  * Summary

---  

## Overview 
  
The company AutosRUs has a new prototype car, the MechaCar, that has problems in production operations. The manufacturing team is not making progress in solving the problems, and now the data analytics team is to analyze production data for possible insights to help manufacturing resolve the problems. 

   ### Purpose
   To perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes. To collect summary statistics on the pounds per square inch (psi) of the suspension coils from manufacturing lots, and to run t-tests to determine if the manufacturing lots are statistically different from the mean population. And, to design a statistical study to compare vehicle performance of the MechaCar against other manufacturers. 
   
  
   The deliverables are: 
   - Deliverable 1: Linear Regression to Predict MPG
   - Deliverable 2: Summary Statistics on Suspension Coils
   - Deliverable 3: T-Test on Suspension Coils
   - Deliverable 4: Design a Study Comparing the MechaCar to the Competition
   
  
   ### Resources
  * Data/content source files:  MechaCar_mpg.csv and Suspension_Coil.csv 
  * Software: Windows10, RStudio Ver 1.3.1093, R, tidyverse and dplyr Packages
  
<br>

--- 

## Results


### Deliverable 1: Linear Regression to Predict MPG

Screenshot of linear regression output:  ![MechaCar_lm_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/MechaCar_lm_summary.png)

#### Q & A:
 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  Notes: 1) The p-value of the linear regression is 5.35e-11, which is much smaller than the given significance level of 0.05, and therefore can say that there is sufficient evidence to reject the null hypothesis.   
  
  ![lm_formula.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/lm_formula.png)
 
 
 2. Is the slope of the linear model considered to be zero? Why or why not?
 
 
 
 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not


.-----------------------------------------------------------

### Deliverable 2: Summary Statistics on Suspension Coils

 ** write a short summary using screenshots from your total_summary and lot_summary dataframes
 
   | **Item** | **Result** |
   | :--- | :---: |
   | 1. Total Summary Statistics on All Three Lots | ![Coil_total_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_total_summary.png) |
   | 2. normal plot reference for Total Summary | ![Coil_total_normalplot.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_total_normalplot.png) |
   | 3. Lot Summary Statistics on Each of the Three Lots | ![Coil_Lot_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_Lot_summary.png) |

 
 
 **Address the following Question:**
 
 - Question: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why not?
 - Reply: 



.-----------------------------------------------------------

### Deliverable 3: T-Test on Suspension Coils

briefly summarize your interpretation and findings for the t-test results, a summary of the t-test results across all manufacturing lots and for each lot. 
 Include screenshots of the t-test to support your summary
 

   | **t.test Results on Suspension Coil Data** <br> *to determine if the PSI is statistically different from the population mean of 1,500 psi* | **Computed Results** |
   | :--- | :---: |
   | **All Manufacturing Lots as one group** <br>abc est on PSI across ssrl slk | ![ttest_all.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_all.png) |
   | **t.test on PSI for each Lot separately, using subset()** | ![]() |
   | **Lot-1** <br> abc, def, hij | ![ttest_lot1.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot1.png) |   
   | **Lot-2** <br> abc, def, hij | ![ttest_lot2.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot2.png) |
   | **Lot-3** <br> abc, def, hij | ![ttest_lot3.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot3.png) |
 

#### Summary of the t.test Results across all Lots, and for each Lot

 Abc def.

.-----------------------------------------------------------

### Deliverable 4: Design a Study Comparing the MechaCar to the Competition 
 (Study Design: MechaCar vs Competition, as a statistical study to compare vehicle performance.)

 Address these Questions:
 
 1. What metric or metrics are you going to test?
 
 
 2. What is the null hypothesis or alternative hypothesis?
 
 
 3. What statistical test would you use to test the hypothesis? And why?
 
 
 4. What data is needed to run the statistical test?


 
   | **abc** |
   | :---: |
   | ![]() |




<br>

---

.end
