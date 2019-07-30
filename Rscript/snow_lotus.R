########################
# set working dictionary
########################
setwd("c:/Users/Jade.Hou/Desktop/microarray")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)




#read snow_lotus data

snow_lotus = read.csv("C:/Users/Jade.Hou/Desktop/microarray/R1_data/snow_lotus.csv", header = T)




######
#PINK1
######

#PINK1 gene symbol
snow_lotus[12979, 1]

#PINK1 log2 ratio
sl_24hr <- unfactor(snow_lotus[12979, 6])
sl_6hr <- unfactor(snow_lotus[12979, 7])
sl_3hr <- unfactor(snow_lotus[12979, 8])


pink1 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(pink1, xlab = "Dose", ylab = "log2 Expression Ratio", main = "PINK1", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))




########
#CCT2(1)
########

#CCT2 gene symbol
snow_lotus[10573, 1]

#CCT2 log2 ratio
sl_24hr <- unfactor(snow_lotus[10573, 6])
sl_6hr <- unfactor(snow_lotus[10573, 7])
sl_3hr <- unfactor(snow_lotus[10573, 8])


CCT2 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT2", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))



########
#CCT2(2)
########

#CCT2 gene symbol
snow_lotus[20987, 1]

#CCT2 log2 ratio
sl_24hr <- unfactor(snow_lotus[20987, 6])
sl_6hr <- unfactor(snow_lotus[20987, 7])
sl_3hr <- unfactor(snow_lotus[20987, 8])


CCT2 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT2", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))






########
#CCT5(1)
########

#CCT5 gene symbol
snow_lotus[190, 1]

#CCT5 log2 ratio
sl_24hr <- unfactor(snow_lotus[190, 6])
sl_6hr <- unfactor(snow_lotus[190, 7])
sl_3hr <- unfactor(snow_lotus[190, 8])


CCT5 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT5", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))


########
#CCT5(2)
########

#CCT5 gene symbol
snow_lotus[22700, 1]

#CCT5 log2 ratio
sl_24hr <- unfactor(snow_lotus[22700, 6])
sl_6hr <- unfactor(snow_lotus[22700, 7])
sl_3hr <- unfactor(snow_lotus[22700, 8])


CCT5 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT5", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))





######
#CCT6A
######

#CCT6A gene symbol
snow_lotus[3209, 1]

#CCT6A log2 ratio
sl_24hr <- unfactor(snow_lotus[3209, 6])
sl_6hr <- unfactor(snow_lotus[3209, 7])
sl_3hr <- unfactor(snow_lotus[3209, 8])


CCT6A = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT6A, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT6A", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))



########
#CCT7(1)
########

#CCT7 gene symbol
snow_lotus[11545, 1]

#CCT7 log2 ratio
sl_24hr <- unfactor(snow_lotus[11545, 6])
sl_6hr <- unfactor(snow_lotus[11545, 7])
sl_3hr <- unfactor(snow_lotus[11545, 8])


CCT7 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))



########
#CCT7(2)
########

#CCT7 gene symbol
snow_lotus[17579, 1]

#CCT7 log2 ratio
sl_24hr <- unfactor(snow_lotus[17579, 6])
sl_6hr <- unfactor(snow_lotus[17579, 7])
sl_3hr <- unfactor(snow_lotus[17579, 8])


CCT7 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))


#####
#CCT8
#####

#CCT8 gene symbol
snow_lotus[17864, 1]

#CCT8 log2 ratio
sl_24hr <- unfactor(snow_lotus[17864, 6])
sl_6hr <- unfactor(snow_lotus[17864, 7])
sl_3hr <- unfactor(snow_lotus[17864, 8])


CCT8 = c(sl_3hr, sl_6hr, sl_24hr)

#barplot catlog vs log2 ratio

barplot(CCT8, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT8", names.arg = c("3hr", "6hr", "24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))







#########################################
#Get gene symbol from GeneAnnotation file
#########################################

GeneAnnotation = read.csv("C:/Users/Jade.Hou/Desktop/microarray/R1_data/GeneAnnotation.csv", header = T)

#######################################
#log2 expression ratio > 1   upregulate
#######################################

sl_24hr <- as.numeric(unfactor(snow_lotus[1:31742, 6]))
sl_6hr <- as.numeric(unfactor(snow_lotus[1:31742, 7]))
sl_3hr <- as.numeric(unfactor(snow_lotus[1:31742, 8]))


#####################
# 3 & 6 & 24hr
#####################


# sl_24hr upregulate gene symbol
up_sl_24hr = which(sl_24hr > 1)

up_sl_24hr_gene = unfactor(GeneAnnotation[up_sl_24hr, 2])


# sl_6hr upregulate gene symbol
up_sl_6hr = which(sl_6hr > 1)

up_sl_6hr_gene = unfactor(GeneAnnotation[up_sl_6hr, 2])


# sl_3hr upregulate gene symbol
up_sl_3hr = which(sl_3hr > 1)

up_sl_3hr_gene = unfactor(GeneAnnotation[up_sl_3hr, 2])



#find intersection of sl_24hr and sl_6hr and sl_3hr
upregulate_snow_lotus_list_24_6 = intersect(up_sl_24hr_gene, up_sl_6hr_gene)
upregulate_snow_lotus_list = intersect(upregulate_snow_lotus_list_24_6, up_sl_3hr_gene)

#write upregulate_buckwheat_list_25
write.csv(upregulate_snow_lotus_list, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_snow_lotus_list.csv")






##########################################
#log2 expression ratio < -1   downregulate
##########################################

sl_24hr <- as.numeric(unfactor(snow_lotus[1:31742, 6]))
sl_6hr <- as.numeric(unfactor(snow_lotus[1:31742, 7]))
sl_3hr <- as.numeric(unfactor(snow_lotus[1:31742, 8]))


#####################
# 3 & 6 & 24hr
#####################


# sl_24hr downregulate gene symbol
down_sl_24hr = which(sl_24hr < -1)

down_sl_24hr_gene = unfactor(GeneAnnotation[down_sl_24hr, 2])


# sl_6hr downregulate gene symbol
down_sl_6hr = which(sl_6hr < -1)

down_sl_6hr_gene = unfactor(GeneAnnotation[down_sl_6hr, 2])


# sl_3hr downregulate gene symbol
down_sl_3hr = which(sl_3hr < -1)

down_sl_3hr_gene = unfactor(GeneAnnotation[down_sl_3hr, 2])



#find intersection of downregulate sl_24hr and sl_6hr and sl_3hr
downregulate_snow_lotus_list_24_6 = intersect(down_sl_24hr_gene, down_sl_6hr_gene)
downregulate_snow_lotus_list = intersect(downregulate_snow_lotus_list_24_6, down_sl_3hr_gene)

#write upregulate_buckwheat_list_25
write.csv(downregulate_snow_lotus_list, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_snow_lotus_list.csv")
