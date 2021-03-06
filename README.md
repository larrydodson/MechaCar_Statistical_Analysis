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
 - **H0**, Null Hypothesis: The slope of the linear model is zero, or m = 0 (where the dependent variable would be determined by random chance and error, a flat line)
 - **Ha**, Alternative Hypothesis: The slope of the linear model is not zero, or m ≠ 0 (indicating a significant linear relationship for the dependent variable with the independent variable)

From the output:
  - p-value = 5.35e-11
  - Multiple R-squared = 0.7149
  - Intercept, b = -104
  - Using significance level 0.05 

#### Q & A:
 1. *Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*

 the linear equation: **y = m1x1 + m2x2 + m3x3 + m4x4 + m5x5 + b** <br>
  mpg = m1 x vehicle_length + m2 x vehicle_weight + m3 x spoiler_angle + m4 x ground_clearance + m5 x AWD + b

>   | **ind. variable** | **m, slope** | **value** | **Does the variable contribute non-random variance to mpg?** |
>   | :--- | :---: | ---: | :--- |
>   | x1, vehicle_length | m1 | 6.27 | Yes, is non-random |
>   | x2, vehicle_weight | m2 | 0.001 | No, is random |
>   | x3, spoiler_angle | m3 | 0.07 | No, is random |
>   | x4, ground_clearance | m4 | 3.55 | Yes, is non-random |
>   | x5, AWD | m5 | -3.41 | Yes, is non-random; however p-value of 0.1852 is less<br> than 0.05, and impact may be low |
> 
> - Overall, with a p-value of 5.35e-11, much less than the significance level 0.05, we can reject the H0, where mgp is not determined by random chance and error.   
> - With the y-intercept b = -104, indicates that it is likely there are other independent variables that also have a non-random impact on mpg, and further study would be recommended to seek and use other suitable variables. 

 2. *Is the slope of the linear model considered to be zero? Why or why not?*

> No, the slope of the linear model lm is not zero. The p-value is less than significance level of 0.05, and indicates that there is sufficient evidence to reject the H0 and, indicates that slope of the linear model is not zero, i.e., not a flat line.
> 
 
 3. *Does this linear model predict mpg of MechaCar prototypes effectively? Why?* 

>  Yes, the r2 (r-squared) value = 0.7149. As the coefficient of determination, it is a probability metric to determine likelihood of predictability for future data points as a fit to the linear model. A value for r2 in the range between 0 and 1 will indicate a likely probable fit. This is in that range.
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
>  2) Yes - for Lots 1 and, 2. No - for Lot 3.  With the same consideration for each of the three Lots separately, both Lot 1 at 0.98psi, and Lot 2 at 7.47psi, are below the 100psi max requirement. However, Lot 3 at 170.27psi greatly exceeds the 100psi maximum. 
> 
> In summary, the cause of the manufacturing problem is likely to be with Lot 3 that is exceeding the design specification for Variance. The Lot 3 should be removed from production and the manufacturing team to use this information to determine next steps to resolve the problem completely, and to modify production methods to screen and prevent future problems. 
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

- **H0**: Null Hypothesis, There is no statistical difference between the observed sample mean and its population mean.
- **Ha**: Alternative Hypothesis, There is a statistical difference between the observed sample mean and its population mean.
- Population mean is 1500 pounds per inch.
- Using significance level 0.05 

#### Summary of the t.test Results across all Lots, and for each Lot

- For the Group of all three Lots, the p-value is 0.06028, greater than the significance level of 0.05. This is not sufficient evidence to reject the H0, and indicates that this Group is not statistically different from the population mean.
- For Lot 1 and Lot 2: Lot 1 has a p-value of 1 and Lot 2 had a p-value of 0.6072, both are greater than the significance level of 0.05. This is not sufficient evidence to reject the H0, and both samples are not statistically different from the population mean. 
- For Lot 3, it is different from the other Lots. Lot 3 has a p-value of 0.04168 that is less than the significance level of 0.05. In this case, for Lot 3 there is sufficient evidence to reject the H0, and instead to adopt Ha, where the Lot 3 sample is statistically different from the population mean.
- Also with regard to the value for t, a higher magnitude of t is a higher level of evidence against the H0, the Null Hypothesis. The value of t for Lot 3 is -2.0916, and is another indication for the rejection of the H0, and when also compared to the lower values of t for Lots 1 and 2.


.-----------------------------------------------------------

### Deliverable 4: Design a Study Comparing the MechaCar to the Competition 
 (Study Design: MechaCar vs Competition, as a statistical study to compare vehicle performance.)   

 ***Questions:***
 
 1. *What metric or metrics are you going to test?*
  >  Would add most or all of these metrics, as data became available on the Competition: Costs, Fuel efficiency, Horse Power, and Safety rating.
 
 2. *What is the null hypothesis or alternative hypothesis?*
  > To compare the same or very similar data from AutosRUs against data from each competitor, establishing the following hypotheses:
  > - **H0**: The Null Hypothesis, The slope of the linear model is zero, or m = 0 (where the dependent variable would be determined by random chance and error, a flat line)
  > - **Ha**: The Alternative Hypothesis, The slope of the linear model is not zero, or m ≠ 0 , To indicate a significant linear relationship for the dependent variable with the independent variables, comparing AutosRUs against the competitor data.
 
 3. *What statistical test would you use to test the hypothesis? And why?*
  > - Linear regression: To compare the regression curves based on ind.-variables on body style, engine sizes, aerodynamic frames, engine power sizes, and other available variables, as competitive costs, efficiencies, and competitive metrics in manufacturing and features for customer sales.
  > - t-tests, both one-sample and two sample t-test: To compare and determine any statistical differences between the distribution's means from one and two samples, and compared with the competition.
 
 4. *What data is needed to run the statistical test?*
  > From these items are representative data sets that would be valuable for comparison with competitors.
  > - For Costs: Cost of individual components in the supply chain, 
  > - For Fuel efficiency: Data on mgp results, of distance traveled and associated fuel usage, and with added data on body style, engine sizes, aerodynamic frames, engine power sizes, and other items. 
  > - For Horse Power: Engine sizes per model types, engine design for motor types, fuel types, piston and displacements, and along with body frame sizes and weights, and distance traveled with timed instances for those distances.
  > - For Safety rating: Data and related information on accidents occurences, physical impact from accident and level of damage to autos and cost of repairs to help determine level of auto damage, and personal injuries and medical care information to help determine severity of injuries. 
> 
> - Data sets that will include both Categorical and Numerical values, and to follow these assumptions:
>  1. The input data is numerical and continuous.
>  2. Each sample data is selected randomly from its population.
>  3. The input data is considered to be randomly distributed.
>  4. The input data is reasonably large.
>  5. The variance of the two datasets should be similar.

---

.end
