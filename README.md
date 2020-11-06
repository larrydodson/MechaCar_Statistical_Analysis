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
  
  `MechaCar_lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)`

For linear regression, testing the following hypotheses:
 - H0: The slope of the linear model is zero, or m = 0 (where the dependent variable would be determined by random chance and error, a flat line)
 - Ha: The slope of the linear model is not zero, or m ≠ 0 (indicating a significant linear relationship for the dependent variable with the independant variable)


#### Q & A:
 1. *Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*

 the linear equation: **y = m1x1 + m2x2 + m3x3 + m4x4 + m5x5 + b** <br>
  mpg = m1 x vehicle_length + m2 x vehicle_weight + m3 x spoiler_angle + m4 x ground_clearance + m5 x AWD + b

   | **ind. variable** | **m, slope** | **value** | **Does the variable contribute non-random variance to mpg?** |
   | :--- | :---: | ---: | :--- |
   | vehicle_length | m1 | 6.27 | a |
   | vehicle_weight | m2 | 0.001 | a |
   | spoiler_angle | m3 | 0.07 | a |
   | ground_clearance | m4 | 3.55 | a |
   | AWD | m5 | -3.41 | a |




> abcd The p-value of the linear regression is 5.35e-11, which is much smaller than the given significance level of 0.05, and this is sufficient evidence to reject the null hypothesis.   
> 
> any coeff with a high t-value, but not using the intercept; the higher the t-value the more it 
> slop is not zero not zero for at least for these three variables: vehicle_length, ground_clearance and AWD

 
 2. *Is the slope of the linear model considered to be zero? Why or why not?*

> No, the slope of the linear model, lm, is not considered to be zero. The multiple r-square value is 0.7149 and the p-value is below the significance level of 0.05%, indicates that there is sufficient evidence to reject the null hypothesis. And, indicates that slope of the linear model is not zero.
> 
> Zero? - are the slopes close to zero or not, for each ind var
> 
 
 
 3. *Does this linear model predict mpg of MechaCar prototypes effectively? Why?* 

 For r2 (r-squared) value, aka the coefficient of determination, as a probability metric to determine likelihood of predictability for future data points as a fit to the linear model. A value for r2 in the range between 0 and 1 will indicate a likely probable fit.

> abc def. .. ..  ~Yes, the linear model is a good indicator of effectiveness because the multiple r-square value is 0.7149 and the p-value is 5.35e-11, which is below the significance level of 0.05%. The r-square value indicates that 71% of predictions will be correct using this linear model.
> 
> look at Rsq for this   ..    vehicle length, ground clearance and AWD have impact on an mpg parameter   ..  the following variables/coefficients provide 
a non-random amount of variance to the mpg values in the dataset:
 - vehicle length: Pr(>|t|) = 2.60e-12
 - ground clearance: Pr(>|t|) = 5.21e-08
 - (Intercept): Pr(>|t|) = 5.08e-08
> P-values for those variables are much smaller than our significance level of 0.05. Therefore, we have sufficient evidence to state that those parameters have significant impact on the mpg values in the dataset.
> Intersept value in our model is statistically significant too which means that there are other variables and factors that contribute to the variation in mpg that have not been included in our model (and into the dataset) and those values may still need to be collected or observed.
> 

.-----------------------------------------------------------

### Deliverable 2: Summary Statistics on Suspension Coils  .  ![spring.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/spring.png)
 
   | **Item** | **Result** |
   | :--- | :---: |
   | 1. Total Summary Statistics on All Three Lots | ![Coil_total_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_total_summary.png) |
   | 2. normal plot reference for Total Summary<br> `ggplot(Coil, aes(x=PSI)) + geom_density()` | ![Coil_total_normalplot.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_total_normalplot.png) |
   | 3. Lot Summary Statistics on Each of the Three Lots <br> <br> (a normal plot for reference as representative of each of the Lots) | ![Coil_Lot_summary.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_Lot_summary.png)<br> ![Coil_LotX_normalplot.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/Coil_LotX_normalplot.png) |
 
 **Address the following Question:** 
 - Question(s): *The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for: 1) all manufacturing lots in total?, and 2) each lot individually? - Why or Why-not?*
>  Response: 
>  1) Yes - When using the data for all lots in aggregate, Yes, the measured data for Variance that is at 62.29psi is below the 100psi Variance maximum requirement. 
>  2) Yes - for Lots 1 and 2. No - for Lot 3.  With the same consideration for each of the three Lots separately, both Lot 1 at 0.98psi, and Lot 2 at 7.47psi, are below the 100psi max requirement. However, Lot 3 at 170.27psi greatly exceeds the 100psi maximum. 
> 
> In summary, the cause of the manufacturing problem is likely to be with Lot 3 that is exceeding the design specification for Variance. The Lot 3 should be removed from production and the manufacturing team to use this information to determine next steps to resolve the problem completely, and to modify production methods to screen and prevent furture problems. 
> 


.-----------------------------------------------------------

### Deliverable 3: T-Test on Suspension Coils 

   | **t.test Results on Suspension Coil Data** <br>    *to determine if the PSI is statistically different from the population mean of 1,500 psi* | **Computed Results** |
   | :--- | :---: |
   | **All Manufacturing Lots as one group** <br>t = -1.8931<br>p-value = 0.06028 | ![ttest_all.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_all.png) |
   | **t.test on PSI for each Lot separately, using `t.test(subset())`** | ![]() |
   | **Lot 1** <br>t = 0<br>p-value = 1 | ![ttest_lot1.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot1.png) |   
   | **Lot 2** <br>t = 0.51745<br>p-value = 0.6072 | ![ttest_lot2.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot2.png) |
   | **Lot 3** <br>t = -2.0916<br>p-value = 0.04168 | ![ttest_lot3.png](https://github.com/larrydodson/MechaCar_Statistical_Analysis/blob/main/ttest_lot3.png) |

- H0: Null Hypothesis, There is no statistical difference between the observed sample mean and its population mean.
- Ha: Alternative Hypothesis, There is a statistical difference between the observed sample mean and its population mean.
- Population mean is 1500 pounds per inch.
- Using significance level 0.05 

#### Summary of the t.test Results across all Lots, and for each Lot

- For the Group of all three Lots, the p-value is 0.06028, greater than the significance level of 0.05. This is not sufficient evidence to reject the H0, and indicates that this Group is not statistically different from the population mean.
- For Lot 1 and Lot 2: Lot 1 has a p-value of 1 and Lot 2 had a p-value of 0.6072, both are greater than the significance level of 0.05. This is not sufficient evidence to reject the H0, and both samples are not statistically different from the population mean. 
- For Lot 3, it is different from the other Lots. Lot 3 has a p-value of 0.04168 that is less than the significance level of 0.05. In this case, for Lot 3 there is sufficient evidence to reject the H0, and instead to adopt Ha, where the Lot 3 sample is statistically different from the population mean.

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
