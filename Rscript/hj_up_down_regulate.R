########################
# set working dictionary
########################
setwd("/Users/hou/Desktop/20180831_Huang_Jing/hj")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)


#############################
# Read rosa nor_avg_log2 data
#############################

#get gene symvol col:2
hj_normalize = read.csv("/Users/hou/Desktop/20180831_Huang_Jing/hj/hj_normalize.csv", header = T)

hj_normalize = unfactor(hj_normalize)


#get log2 ratio
hj_nor_avg_log2 = read.csv("/Users/hou/Desktop/20180831_Huang_Jing/hj/hj_nor_avg_log2.csv", header = T)

hj_nor_avg_log2 = unfactor(hj_nor_avg_log2)



###################################
# h1460_6hr vs h1460_24hr  col:7, 8
###################################

#upregulate

up_h1460_col = which(hj_nor_avg_log2[,8] - hj_nor_avg_log2[,7] > 1.5)

up_h1460_genelist = hj_normalize[up_h1460_col, 2]


write.csv(up_h1460_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/up_h1460_genelist.csv")


#downregulate

down_h1460_col = which(hj_nor_avg_log2[,7] - hj_nor_avg_log2[,8] > 1.5)


down_h1460_genelist = hj_normalize[down_h1460_col, 2]


write.csv(down_h1460_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/down_h1460_genelist.csv")





####################################
# h1461_6hr vs h1461_24hr  col:9, 10
####################################

#upregulate

up_h1461_col = which(hj_nor_avg_log2[,10] - hj_nor_avg_log2[,9] > 1.5)

up_h1461_genelist = hj_normalize[up_h1461_col, 2]


write.csv(up_h1461_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/up_h1461_genelist.csv")


#downregulate

down_h1461_col = which(hj_nor_avg_log2[,9] - hj_nor_avg_log2[,10] > 1.5)


down_h1461_genelist = hj_normalize[down_h1461_col, 2]


write.csv(down_h1461_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/down_h1461_genelist.csv")











###################################
# h1460_6hr vs h1461_6hr  col:7, 9
###################################

#upregulate

up_h1460_than_1461_6hr_col = which(hj_nor_avg_log2[,7] - hj_nor_avg_log2[,9] > 1.5)

up_h1460_than_1461_6hr_genelist = hj_normalize[up_h1460_than_1461_6hr_col, 2]


write.csv(up_h1460_than_1461_6hr_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/up_h1460_than_1461_6hr_genelist.csv")


#downregulate

down_h1460_than_1461_6hr_col = which(hj_nor_avg_log2[,9] - hj_nor_avg_log2[,7] > 1.5)


down_h1460_than_1461_6hr_genelist = hj_normalize[down_h1460_than_1461_6hr_col, 2]


write.csv(down_h1460_than_1461_6hr_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/down_h1460_than_1461_6hr_genelist.csv")





#####################################
# h1460_24hr vs h1461_24hr  col:8, 10
#####################################

#upregulate

up_h1460_than_1461_24hr_col = which(hj_nor_avg_log2[,8] - hj_nor_avg_log2[,10] > 1.5)

up_h1460_than_1461_24hr_genelist = hj_normalize[up_h1460_than_1461_24hr_col, 2]


write.csv(up_h1460_than_1461_24hr_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/up_h1460_than_1461_24hr_genelist.csv")


#downregulate

down_h1460_than_1461_24hr_col = which(hj_nor_avg_log2[,10] - hj_nor_avg_log2[,8] > 1.5)


down_h1460_than_1461_24hr_genelist = hj_normalize[down_h1460_than_1461_24hr_col, 2]


write.csv(down_h1460_than_1461_24hr_genelist, "/Users/hou/Desktop/20180831_Huang_Jing/hj/differential genelist/down_h1460_than_1461_24hr_genelist.csv")

