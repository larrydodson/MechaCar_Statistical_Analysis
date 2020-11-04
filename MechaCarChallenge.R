# Module_15 Challenge, MechaCar

install.packages("dplyr")
library(dplyr)
install.packages("tidyverse")
library(tidyverse)

# Deliverable 1: Linear Regression to Predict MPG
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
MechaCar_lm <- lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)
summary(MechaCar_lm)


