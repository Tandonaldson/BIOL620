#Author: Tanesha Donaldson, Date: March 1, 2022, Purpose: To generate box plots for raw microarray datasets

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
