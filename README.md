# MechaCar_Statistical_Analysis
UTMCC DataViz Module_15, R and Statistical Analysis

 ![autodataviz.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/autodataviz.png) 


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


### Deliverable 1: Linear Regression to Predict MPG  .  ![fuelgauge.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/fuelgauge.png)

Screenshot of linear regression output:   .   ![MechaCar_lm_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/MechaCar_lm_summary.png)

  ![lm_formula.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/lm_formula.png)


#### Q & A:
 1. *Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*

> abcd The p-value of the linear regression is 5.35e-11, which is much smaller than the given significance level of 0.05, and this is sufficient evidence to reject the null hypothesis.   

any coeff with a high t-value, but not using the intercept; the higher the t-value the more it 

 
 2. *Is the slope of the linear model considered to be zero? Why or why not?*

> efgh  The multiple r-square value is 0.7149 and the p-value is below the significance level of 0.05%, indicates that there is sufficient evidence to reject the null hypothesis. And, indicates that slope of the linear model is not zero.
 
 Zero? - are the slopes close to zero or not, for each ind var

 
 
 3. *Does this linear model predict mpg of MechaCar prototypes effectively? Why?* 

> abc def. .. ..  ~ Yes, the linear model is a good indicator of effectiveness because the multiple r-square value is 0.7149 and the p-value is 5.35e-11, which is below the significance level of 0.05%. The r-square value indicates that 71% of predictions will be correct using this linear model.
> 
> look at Rsq for this 


.-----------------------------------------------------------

### Deliverable 2: Summary Statistics on Suspension Coils  .  ![spring.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/spring.png)
 
   | **Item** | **Result** |
   | :--- | :---: |
   | 1. Total Summary Statistics on All Three Lots | ![Coil_total_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_total_summary.png) |
   | 2. normal plot reference for Total Summary<br> `ggplot(Coil, aes(x=PSI)) + geom_density()` | ![Coil_total_normalplot.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_total_normalplot.png) |
   | 3. Lot Summary Statistics on Each of the Three Lots | ![Coil_Lot_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_Lot_summary.png)<br> ![Coil_LotX_normalplot.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_LotX_normalplot.png) |
 
 **Address the following Question:** 
 - Question(s): *The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for: 1) all manufacturing lots in total?, and 2) each lot individually? - Why or Why-not?*
> - Response: 
>  1) Yes - When using the data for all lots in aggregate, Yes, the measured data for Variance that is at 62.29psi is below the 100psi Variance maximum requirement. 
>  2) Yes - for Lots 1 and 2. No - for Lot 3.  With the same consideration for each of the three Lots separately, both Lot 1 at 0.98psi, and Lot 2 at 7.47psi, are below the 100psi max requirement. However, Lot 3 at 170.27psi greatly exceeds the 100psi maximum. 
> 
> In summary, the cause of the manufacturing problem is likely to be with Lot 3 exceeding the design specification for Variance. The Lot 3 should be removed from production and the manufacturing team to use this information for next steps to resolve the problem completely, and to modify production methods to screen and prevent furture problems. 
> 


.-----------------------------------------------------------

### Deliverable 3: T-Test on Suspension Coils 

*briefly summarize your interpretation and findings for the t-test results, a summary of the t-test results across all manufacturing lots and for each lot.*
 

   | **t.test Results on Suspension Coil Data** <br> *to determine if the PSI is statistically different from the population mean of 1,500 psi* | **Computed Results** |
   | :--- | :---: |
   | **All Manufacturing Lots as one group** <br>abc est on PSI across ssrl slk | ![ttest_all.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_all.png) |
   | **t.test on PSI for each Lot separately, using subset()** | ![]() |
   | **Lot-1** <br> abc, def, hij | ![ttest_lot1.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot1.png) |   
   | **Lot-2** <br> abc, def, hij | ![ttest_lot2.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot2.png) |
   | **Lot-3** <br> abc, def, hij | ![ttest_lot3.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot3.png) |
 

#### Summary of the t.test Results across all Lots, and for each Lot

 Abc def.
Collectively, the p-value of the suspension coil’s PSI is 0.06028, which is above the significance level of 0.05% and therefore demonstrates that it is not statistically different (aka it is statistically similar to) from the mean population PSI results. 

However, when grouped by manufacturing lots, lot 1 had a p-value of 1 and lot 2 had a p-value of 0.6072, which are above the significance level as well, and thereby demonstrate that they are not statistically different from the mean population PSI results. 

Lot 3 had a p-value of 0.04168, which is below the significance level. Among the three manufacturing lots, the suspension coil's PSI of lot 3 is the only one that is statistically different from the mean population PSI results.


.-----------------------------------------------------------

### Deliverable 4: Design a Study Comparing the MechaCar to the Competition 
 (Study Design: MechaCar vs Competition, as a statistical study to compare vehicle performance.)

 Address these Questions:
 
 1. *What metric or metrics are you going to test?*
 
 
 2. *What is the null hypothesis or alternative hypothesis?*
 
 
 3. *What statistical test would you use to test the hypothesis? And why?*
 
 
 4. *What data is needed to run the statistical test?*


 
   | **abc** |
   | :---: |
   | ![]() |

<div align="center"> </div>


<br>

---

.end
