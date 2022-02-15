# Author: Tanesha Donaldson, Date: Feb 15, 2022, Purpose: To perform microarray normalization

# Setting the working directory to your .CEL files folder
setwd("C:/Users/Tanesha/Desktop/10_CEL_Files")

#Load package affy
library(affy)

#Reading the .CEL files
eset <- ReadAffy()

