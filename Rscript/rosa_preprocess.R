########################
# set working dictionary
########################
setwd("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)



###############
#read rose data
###############

#mock

mock_1 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/mock_1.csv", header = T)
mock_1 = unfactor(mock_1)


mock_3 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/mock_3.csv", header = T)
mock_3 = unfactor(mock_3)

#968_6hr

r968_6hr_1 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_6hr_1.csv", header = T)
r968_6hr_1 = unfactor(r968_6hr_1)

r968_6hr_3 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_6hr_3.csv", header = T)
r968_6hr_3 = unfactor(r968_6hr_3)

#LPS_6hr

LPS_6hr_1 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/LPS_6hr_1.csv", header = T)
LPS_6hr_1 = unfactor(LPS_6hr_1)

LPS_6hr_2 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/LPS_6hr_2.csv", header = T)
LPS_6hr_2 = unfactor(LPS_6hr_2)

#968_LPS_6hr

r968_LPS_6hr_1 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_LPS_6hr_1.csv", header = T)
r968_LPS_6hr_1 = unfactor(r968_LPS_6hr_1)

r968_LPS_6hr_3 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_LPS_6hr_3.csv", header = T)
r968_LPS_6hr_3 = unfactor(r968_LPS_6hr_3)


#968_24hr

r968_24hr_1 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_24hr_1.csv", header = T)
r968_24hr_1 = unfactor(r968_24hr_1)

r968_24hr_2 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_24hr_2.csv", header = T)
r968_24hr_2 = unfactor(r968_24hr_2)

r968_24hr_3 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_24hr_3.csv", header = T)
r968_24hr_3 = unfactor(r968_24hr_3)

#LPS_24hr

LPS_24hr_2 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/LPS_24hr_2.csv", header = T)
LPS_24hr_2 = unfactor(LPS_24hr_2)

LPS_24hr_3 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/LPS_24hr_3.csv", header = T)
LPS_24hr_3 = unfactor(LPS_24hr_3)

#968_LPS_24hr

r968_LPS_24hr_1 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/968_LPS_24hr_1.csv", header = T)
r968_LPS_24hr_1 = unfactor(r968_LPS_24hr_1)






##################################################
# Get the gene expression from .gpr
# gene: PH_hs_
# col : Name(4) probeID(5) F635 Median(9) Flag(34)
##################################################

#######
#mock_1
#######

#get probeID
probeID = mock_1[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = mock_1[gene_probeID_row, 4]
geneID = mock_1[gene_probeID_row, 5]
F635_median = mock_1[gene_probeID_row, 9]
Flag = mock_1[gene_probeID_row, 34]
  
mock_1_data =cbind(name, geneID, F635_median, Flag)



#######
#mock_3
#######

#get probeID
probeID = mock_3[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = mock_3[gene_probeID_row, 4]
geneID = mock_3[gene_probeID_row, 5]
F635_median = mock_3[gene_probeID_row, 9]
Flag = mock_3[gene_probeID_row, 34]

mock_3_data =cbind(name, geneID, F635_median, Flag)



###########
#r968_6hr_1
###########

#get probeID
probeID = r968_6hr_1[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_6hr_1[gene_probeID_row, 4]
geneID = r968_6hr_1[gene_probeID_row, 5]
F635_median = r968_6hr_1[gene_probeID_row, 9]
Flag = r968_6hr_1[gene_probeID_row, 34]

r968_6hr_1_data =cbind(name, geneID, F635_median, Flag)


###########
#r968_6hr_3
###########

#get probeID
probeID = r968_6hr_3[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_6hr_3[gene_probeID_row, 4]
geneID = r968_6hr_3[gene_probeID_row, 5]
F635_median = r968_6hr_3[gene_probeID_row, 9]
Flag = r968_6hr_3[gene_probeID_row, 34]

r968_6hr_3_data =cbind(name, geneID, F635_median, Flag)




###########
#LPS_6hr_1
###########

#get probeID
probeID = LPS_6hr_1[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = LPS_6hr_1[gene_probeID_row, 4]
geneID = LPS_6hr_1[gene_probeID_row, 5]
F635_median = LPS_6hr_1[gene_probeID_row, 9]
Flag = LPS_6hr_1[gene_probeID_row, 34]

LPS_6hr_1_data =cbind(name, geneID, F635_median, Flag)





###########
#LPS_6hr_2
###########

#get probeID
probeID = LPS_6hr_2[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = LPS_6hr_2[gene_probeID_row, 4]
geneID = LPS_6hr_2[gene_probeID_row, 5]
F635_median = LPS_6hr_2[gene_probeID_row, 9]
Flag = LPS_6hr_2[gene_probeID_row, 34]

LPS_6hr_2_data =cbind(name, geneID, F635_median, Flag)




###############
#r968_LPS_6hr_1
###############

#get probeID
probeID = r968_LPS_6hr_1[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_LPS_6hr_1[gene_probeID_row, 4]
geneID = r968_LPS_6hr_1[gene_probeID_row, 5]
F635_median = r968_LPS_6hr_1[gene_probeID_row, 9]
Flag = r968_LPS_6hr_1[gene_probeID_row, 34]

r968_LPS_6hr_1_data =cbind(name, geneID, F635_median, Flag)



###############
#r968_LPS_6hr_3
###############

#get probeID
probeID = r968_LPS_6hr_3[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_LPS_6hr_3[gene_probeID_row, 4]
geneID = r968_LPS_6hr_3[gene_probeID_row, 5]
F635_median = r968_LPS_6hr_3[gene_probeID_row, 9]
Flag = r968_LPS_6hr_3[gene_probeID_row, 34]

r968_LPS_6hr_3_data =cbind(name, geneID, F635_median, Flag)




############
#r968_24hr_1
############

#get probeID
probeID = r968_24hr_1[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_24hr_1[gene_probeID_row, 4]
geneID = r968_24hr_1[gene_probeID_row, 5]
F635_median = r968_24hr_1[gene_probeID_row, 9]
Flag = r968_24hr_1[gene_probeID_row, 34]

r968_24hr_1_data =cbind(name, geneID, F635_median, Flag)



############
#r968_24hr_2
############

#get probeID
probeID = r968_24hr_2[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_24hr_2[gene_probeID_row, 4]
geneID = r968_24hr_2[gene_probeID_row, 5]
F635_median = r968_24hr_2[gene_probeID_row, 9]
Flag = r968_24hr_2[gene_probeID_row, 34]

r968_24hr_2_data =cbind(name, geneID, F635_median, Flag)



############
#r968_24hr_3
############

#get probeID
probeID = r968_24hr_3[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_24hr_3[gene_probeID_row, 4]
geneID = r968_24hr_3[gene_probeID_row, 5]
F635_median = r968_24hr_3[gene_probeID_row, 9]
Flag = r968_24hr_3[gene_probeID_row, 34]

r968_24hr_3_data =cbind(name, geneID, F635_median, Flag)


############
#LPS_24hr_2
############

#get probeID
probeID = LPS_24hr_2[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = LPS_24hr_2[gene_probeID_row, 4]
geneID = LPS_24hr_2[gene_probeID_row, 5]
F635_median = LPS_24hr_2[gene_probeID_row, 9]
Flag = LPS_24hr_2[gene_probeID_row, 34]

LPS_24hr_2_data =cbind(name, geneID, F635_median, Flag)



############
#LPS_24hr_3
############

#get probeID
probeID = LPS_24hr_3[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = LPS_24hr_3[gene_probeID_row, 4]
geneID = LPS_24hr_3[gene_probeID_row, 5]
F635_median = LPS_24hr_3[gene_probeID_row, 9]
Flag = LPS_24hr_3[gene_probeID_row, 34]

LPS_24hr_3_data =cbind(name, geneID, F635_median, Flag)



################
#r968_LPS_24hr_1
################

#get probeID
probeID = r968_LPS_24hr_1[1:39200,5]

#get probeID snbstring: PH_hs_
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = r968_LPS_24hr_1[gene_probeID_row, 4]
geneID = r968_LPS_24hr_1[gene_probeID_row, 5]
F635_median = r968_LPS_24hr_1[gene_probeID_row, 9]
Flag = r968_LPS_24hr_1[gene_probeID_row, 34]

r968_LPS_24hr_1_data =cbind(name, geneID, F635_median, Flag)





########################################
# Microarray data quantile normalization
########################################

# get geneName probeID    F635Median from 14 microarray 

name = mock_1_data[1:28264,1]
geneID = mock_1_data[1:28264,2]


mock_1_F635Median = mock_1_data[1:28264,3]
mock_3_F635Median = mock_3_data[1:28264,3]


r968_6hr_1_F635Median = r968_6hr_1_data[1:28264,3]
r968_6hr_3_F635Median = r968_6hr_3_data[1:28264,3]


LPS_6hr_1_F635Median = LPS_6hr_1_data[1:28264,3]
LPS_6hr_2_F635Median = LPS_6hr_2_data[1:28264,3]


r968_LPS_6hr_1_F635Median = r968_LPS_6hr_1_data[1:28264,3]
r968_LPS_6hr_3_F635Median = r968_LPS_6hr_3_data[1:28264,3]


r968_24hr_1_F635Median = r968_24hr_1_data[1:28264,3]
r968_24hr_2_F635Median = r968_24hr_2_data[1:28264,3]
r968_24hr_3_F635Median = r968_24hr_3_data[1:28264,3]


LPS_24hr_2_F635Median = LPS_24hr_2_data[1:28264,3]
LPS_24hr_3_F635Median = LPS_24hr_3_data[1:28264,3]


r968_LPS_24hr_1_F635Median = r968_LPS_24hr_1_data[1:28264,3]



rosa_preprocess_data = cbind(name, geneID, mock_1_F635Median, mock_3_F635Median, r968_6hr_1_F635Median, r968_6hr_3_F635Median, LPS_6hr_1_F635Median, LPS_6hr_2_F635Median, r968_LPS_6hr_1_F635Median, r968_LPS_6hr_3_F635Median, r968_24hr_1_F635Median, r968_24hr_2_F635Median, r968_24hr_3_F635Median, LPS_24hr_2_F635Median, LPS_24hr_3_F635Median, r968_LPS_24hr_1_F635Median)



#write rosa preprocess 14 microarray data (unnormalize)
write.csv(rosa_preprocess_data, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/rosa_preprocess_data.csv")





# install quantile normalization package
source("https://bioconductor.org/biocLite.R")
biocLite("preprocessCore")

library(preprocessCore)

#get unnormalize gene expression
rosa_preprocess_data = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/preprocess/rosa_preprocess_data.csv", header = T)

rosa_F635Median= as.matrix(rosa_preprocess_data[1:28264,4:17])

# quantile normalize gene expression
rosa_F635Median_nor = normalize.quantiles(rosa_F635Median)

rosa_normalize = cbind(rosa_preprocess_data[1:28264, 2:3], rosa_F635Median_nor)


# write rosa preprocess 14 microarray data (unnormalize)
write.csv(rosa_normalize, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/normalize/rosa_normalize.csv")
