########################
# set working dictionary
########################
setwd("/Users/hou/Desktop/20180831_Huang_Jing/raw_data/preprocess")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)



#####################
#read haung_jing data
#####################

#mock

mock_2 = read.csv("mock_2.csv", header = T)
mock_2 = unfactor(mock_2)


#h1460_6hr

h1460_6hr_1 = read.csv("1460_6hr_1.csv", header = T)
h1460_6hr_1 = unfactor(h1460_6hr_1)

h1460_6hr_3 = read.csv("1460_6hr_3.csv", header = T)
h1460_6hr_3 = unfactor(h1460_6hr_3)


#h1460_24hr

h1460_24hr_1 = read.csv("1460_24hr_1.csv", header = T)
h1460_24hr_1 = unfactor(h1460_24hr_1)

h1460_24hr_2 = read.csv("1460_24hr_2.csv", header = T)
h1460_24hr_2 = unfactor(h1460_24hr_2)

h1460_24hr_3 = read.csv("1460_24hr_3.csv", header = T)
h1460_24hr_3 = unfactor(h1460_24hr_3)


#h1461_6hr

h1461_6hr_1 = read.csv("1461_6hr_1.csv", header = T)
h1461_6hr_1 = unfactor(h1461_6hr_1)

h1461_6hr_2 = read.csv("1461_6hr_2.csv", header = T)
h1461_6hr_2 = unfactor(h1461_6hr_2)

h1461_6hr_3 = read.csv("1461_6hr_3.csv", header = T)
h1461_6hr_3 = unfactor(h1461_6hr_3)


#h1461_24hr

h1461_24hr_1 = read.csv("1461_24hr_1.csv", header = T)
h1461_24hr_1 = unfactor(h1461_24hr_1)

h1461_24hr_2 = read.csv("1461_24hr_2.csv", header = T)
h1461_24hr_2 = unfactor(h1461_24hr_2)

h1461_24hr_3 = read.csv("1461_24hr_3.csv", header = T)
h1461_24hr_3 = unfactor(h1461_24hr_3)


##################################################
# Get the gene expression from .gpr
# gene: PH_hs_
# col : Name(4) probeID(5) F635 Median(9) Flag(34)
##################################################

#######
#mock_2
#######

#get probeID
probeID = mock_2[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = mock_2[gene_probeID_row, 4]
geneID = mock_2[gene_probeID_row, 5]
F635_median = mock_2[gene_probeID_row, 9]
Flag = mock_2[gene_probeID_row, 34]

mock_2_data =cbind(name, geneID, F635_median, Flag)


############
#h1460_6hr_1
############

#get probeID
probeID = h1460_6hr_1[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1460_6hr_1[gene_probeID_row, 4]
geneID = h1460_6hr_1[gene_probeID_row, 5]
F635_median = h1460_6hr_1[gene_probeID_row, 9]
Flag = h1460_6hr_1[gene_probeID_row, 34]

h1460_6hr_1_data =cbind(name, geneID, F635_median, Flag)


############
#h1460_6hr_1
############

#get probeID
probeID = h1460_6hr_1[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1460_6hr_1[gene_probeID_row, 4]
geneID = h1460_6hr_1[gene_probeID_row, 5]
F635_median = h1460_6hr_1[gene_probeID_row, 9]
Flag = h1460_6hr_1[gene_probeID_row, 34]

h1460_6hr_1_data =cbind(name, geneID, F635_median, Flag)


############
#h1460_6hr_3
############

#get probeID
probeID = h1460_6hr_3[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1460_6hr_3[gene_probeID_row, 4]
geneID = h1460_6hr_3[gene_probeID_row, 5]
F635_median = h1460_6hr_3[gene_probeID_row, 9]
Flag = h1460_6hr_3[gene_probeID_row, 34]

h1460_6hr_3_data =cbind(name, geneID, F635_median, Flag)


#############
#h1460_24hr_1
#############

#get probeID
probeID = h1460_24hr_1[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1460_24hr_1[gene_probeID_row, 4]
geneID = h1460_24hr_1[gene_probeID_row, 5]
F635_median = h1460_24hr_1[gene_probeID_row, 9]
Flag = h1460_24hr_1[gene_probeID_row, 34]

h1460_24hr_1_data =cbind(name, geneID, F635_median, Flag)


#############
#h1460_24hr_2
#############

#get probeID
probeID = h1460_24hr_2[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1460_24hr_2[gene_probeID_row, 4]
geneID = h1460_24hr_2[gene_probeID_row, 5]
F635_median = h1460_24hr_2[gene_probeID_row, 9]
Flag = h1460_24hr_2[gene_probeID_row, 34]

h1460_24hr_2_data =cbind(name, geneID, F635_median, Flag)


#############
#h1460_24hr_3
#############

#get probeID
probeID = h1460_24hr_3[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1460_24hr_3[gene_probeID_row, 4]
geneID = h1460_24hr_3[gene_probeID_row, 5]
F635_median = h1460_24hr_3[gene_probeID_row, 9]
Flag = h1460_24hr_3[gene_probeID_row, 34]

h1460_24hr_3_data =cbind(name, geneID, F635_median, Flag)


############
#h1461_6hr_1
############

#get probeID
probeID = h1461_6hr_1[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1461_6hr_1[gene_probeID_row, 4]
geneID = h1461_6hr_1[gene_probeID_row, 5]
F635_median = h1461_6hr_1[gene_probeID_row, 9]
Flag = h1461_6hr_1[gene_probeID_row, 34]

h1461_6hr_1_data =cbind(name, geneID, F635_median, Flag)


############
#h1461_6hr_2
############

#get probeID
probeID = h1461_6hr_2[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1461_6hr_2[gene_probeID_row, 4]
geneID = h1461_6hr_2[gene_probeID_row, 5]
F635_median = h1461_6hr_2[gene_probeID_row, 9]
Flag = h1461_6hr_2[gene_probeID_row, 34]

h1461_6hr_2_data =cbind(name, geneID, F635_median, Flag)


############
#h1461_6hr_3
############

#get probeID
probeID = h1461_6hr_3[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1461_6hr_3[gene_probeID_row, 4]
geneID = h1461_6hr_3[gene_probeID_row, 5]
F635_median = h1461_6hr_3[gene_probeID_row, 9]
Flag = h1461_6hr_3[gene_probeID_row, 34]

h1461_6hr_3_data =cbind(name, geneID, F635_median, Flag)


#############
#h1461_24hr_1
#############

#get probeID
probeID = h1461_24hr_1[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1461_24hr_1[gene_probeID_row, 4]
geneID = h1461_24hr_1[gene_probeID_row, 5]
F635_median = h1461_24hr_1[gene_probeID_row, 9]
Flag = h1461_24hr_1[gene_probeID_row, 34]

h1461_24hr_1_data =cbind(name, geneID, F635_median, Flag)


#############
#h1461_24hr_2
#############

#get probeID
probeID = h1461_24hr_2[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1461_24hr_2[gene_probeID_row, 4]
geneID = h1461_24hr_2[gene_probeID_row, 5]
F635_median = h1461_24hr_2[gene_probeID_row, 9]
Flag = h1461_24hr_2[gene_probeID_row, 34]

h1461_24hr_2_data =cbind(name, geneID, F635_median, Flag)


#############
#h1461_24hr_3
#############

#get probeID
probeID = h1461_24hr_3[1:39200,5]

#get probeID snbstring: PH_hs_ (human probe)
probeID_1_6 = substr(probeID[1:39200], 1,6)

# get gene probeID, filter control probeID
gene_probeID_row = which(probeID_1_6 == "PH_hs_")

# get gene Name(4) probeID(5) F635 Median(9) Flag(34)
name = h1461_24hr_3[gene_probeID_row, 4]
geneID = h1461_24hr_3[gene_probeID_row, 5]
F635_median = h1461_24hr_3[gene_probeID_row, 9]
Flag = h1461_24hr_3[gene_probeID_row, 34]

h1461_24hr_3_data =cbind(name, geneID, F635_median, Flag)


########################################
# Microarray data quantile normalization
########################################

# get geneName probeID    F635Median from 14 microarray 

name = mock_2_data[1:28264,1]
geneID = mock_2_data[1:28264,2]


mock_2_F635Median = mock_2_data[1:28264,3]


h1460_6hr_1_F635Median = h1460_6hr_1_data[1:28264,3]
h1460_6hr_3_F635Median = h1460_6hr_3_data[1:28264,3]


h1460_24hr_1_F635Median = h1460_24hr_1_data[1:28264,3]
h1460_24hr_2_F635Median = h1460_24hr_2_data[1:28264,3]
h1460_24hr_3_F635Median = h1460_24hr_3_data[1:28264,3]


h1461_6hr_1_F635Median = h1461_6hr_1_data[1:28264,3]
h1461_6hr_2_F635Median = h1461_6hr_2_data[1:28264,3]
h1461_6hr_3_F635Median = h1461_6hr_3_data[1:28264,3]


h1461_24hr_1_F635Median = h1461_24hr_1_data[1:28264,3]
h1461_24hr_2_F635Median = h1461_24hr_2_data[1:28264,3]
h1461_24hr_3_F635Median = h1461_24hr_3_data[1:28264,3]



hj_preprocess_data = cbind(name, geneID, mock_2_F635Median, h1460_6hr_1_F635Median, h1460_6hr_3_F635Median, h1460_24hr_1_F635Median, h1460_24hr_2_F635Median, h1460_24hr_3_F635Median, h1461_6hr_1_F635Median, h1461_6hr_2_F635Median, h1461_6hr_3_F635Median, h1461_24hr_1_F635Median, h1461_24hr_2_F635Median, h1461_24hr_3_F635Median)



#write rosa preprocess 14 microarray data (unnormalize)
write.csv(hj_preprocess_data, "/Users/hou/Desktop/20180831_Huang_Jing/raw_data/preprocess/hj_preprocess_data.csv")





# install quantile normalization package
source("https://bioconductor.org/biocLite.R")
biocLite("preprocessCore")

library(preprocessCore)

#get unnormalize gene expression
hj_preprocess_data = read.csv("/Users/hou/Desktop/20180831_Huang_Jing/raw_data/preprocess/hj_preprocess_data.csv", header = T)

hj_F635Median= as.matrix(hj_preprocess_data[1:28264,4:15])

# quantile normalize gene expression
hj_F635Median_nor = normalize.quantiles(hj_F635Median)

hj_normalize = cbind(hj_preprocess_data[1:28264, 2:3], hj_F635Median_nor)


# write hj preprocess 13 microarray data (unnormalize)
write.csv(hj_normalize, "/Users/hou/Desktop/20180831_Huang_Jing/hj/hj_normalize.csv")










