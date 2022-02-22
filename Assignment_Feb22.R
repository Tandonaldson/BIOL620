#Author: Tanesha Donaldson, Date: Feb 22, 2022, Purpose: Generate a normalized box-lot for same set of data from class, using Mas5.0 normalized function instead of RMA function.

setwd("C:/Users/Tanesha/Desktop/10_CEL_Files")
library(affy)
eset <- ReadAffy()

#Box plots for raw datasets
boxplot(eset)

#Perform Mas5.0 normalization
eset_Norm <- mas5(eset)

#Box plots for normalized datasets
mas5 <- exprs(eset_Norm)
boxplot(mas5)