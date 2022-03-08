#Author: Tanesha Donaldson, Date: March 8, 2022, Purpose: To generate box plots for raw microarray datasets

setwd("C:/Users/Tanesha/Desktop/10_CEL_Files")
library(affy)
eset <- ReadAffy()

#Perform RMA normalization
eset_Norm <- rma(eset)
rma <- exprs(eset_Norm)
head(rma)

#Log base 2, or base 10, To perform log transformation (if not already done) do following
Treatment <- apply(rma[,c("GSM153813.CEL.gz", "GSM153814.CEL.gz","GSM153815.CEL.gz","GSM153816.CEL.gz","GSM153817.CEL.gz")],1,log)
Control <- apply(rma[,c("GSM153818.CEL.gz", "GSM153819.CEL.gz","GSM153820.CEL.gz","GSM153821.CEL.gz","GSM153822.CEL.gz")],1,log)
head(Treatment)

#Perform transpose so that samples are your columns and genes are your rows!!
Treatment_T <- t(Treatment)
Control_T <- t(Control)
head(Treatment_T)

#To make fold changes, we first need to take means/average for treatment and for control samples.
Treatment_T_Mean <- rowMeans(Treatment_T)
Control_T_Mean <- rowMeans(Control_T)
head(Treatment_T_Mean)
head(Control_T_Mean)

#Get the subtraction fold change for treatment over control
Fold_Change <- Treatment_T_Mean-Control_T_Mean
head(Fold_Change)

#Assignment: Export variable "Fold Change" as a .csv format file with name "fold_changes.csv"
write.csv(Fold_Change, "fold_changes.csv", row.names=TRUE)