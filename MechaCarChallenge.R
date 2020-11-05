# Module_15 Challenge, MechaCar

install.packages("dplyr")
library(dplyr)
install.packages("tidyverse")
library(tidyverse)

# Deliverable-1: Linear Regression to Predict MPG
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
MechaCar_lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(MechaCar_lm)

# Deliverable-2: Summary Statistics on Suspension Coils for all three Lots 
Coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
Coil_total_summary <- Coil %>% summarize(mean_psi=mean(PSI), median_psi=median(PSI), variance_psi=var(PSI), sd_psi=sd(PSI))
summary(Coil$PSI)

# Visual for PSI distribution
ggplot(Coil, aes(x=PSI)) + geom_density()

# For Suspension Coil, Summary Statistics on each of the separate three Lots
Coil_Lot_summary <- Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean_psi=mean(PSI), median_psi=median(PSI), variance_psi=var(PSI), sd_psi=sd(PSI))

# Use t.test for sample compare to population, all, mean = 1500. then, for each Lot1, Lot2, Lot3
#t.test(log10(Coil$PSI), mu=1500)
t.test(x=Coil$PSI, mu=1500)
t.test(subset(Coil, Manufacturing_Lot == "Lot1")$PSI, mu = 1500)
t.test(subset(Coil, Manufacturing_Lot == "Lot2")$PSI, mu = 1500)
t.test(subset(Coil, Manufacturing_Lot == "Lot3")$PSI, mu = 1500)
