########################
# set working dictionary
########################
setwd("C:/Users/User/Desktop/20170814_rosa_R1/rosa/normalize")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)


#############################
# Read rosa nor_avg_log2 data
#############################

#get gene symvol col:2
rosa_normalize = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/normalize/rosa_normalize.csv", header = T)

rosa_normalize = unfactor(rosa_normalize)


#get log2 ratio
rosa_nor_avg_log2 = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/normalize/rosa_nor_avg_log2.csv", header = T)

rosa_nor_avg_log2 = unfactor(rosa_nor_avg_log2)






#################################
# r968_6hr vs r968_24hr  col:9,12
#################################

#upregulate

up_r968_col = which(rosa_nor_avg_log2[,12] - rosa_nor_avg_log2[,9] > 1.5)

up_r968_genelist = rosa_normalize[up_r968_col, 2]


write.csv(up_r968_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/up_r968_genelist.csv")


#downregulate

down_r968_col = which(rosa_nor_avg_log2[,9] - rosa_nor_avg_log2[,12] > 1.5)


down_r968_genelist = rosa_normalize[down_r968_col, 2]


write.csv(down_r968_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/down_r968_genelist.csv")






#################################
# LPS_6hr vs LPS_24hr  col:10,13
#################################

#upregulate

up_LPS_col = which(rosa_nor_avg_log2[,13] - rosa_nor_avg_log2[,10] > 1.5)

up_LPS_genelist = rosa_normalize[up_LPS_col, 2]


write.csv(up_LPS_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/up_LPS_genelist.csv")


#downregulate

down_LPS_col = which(rosa_nor_avg_log2[,10] - rosa_nor_avg_log2[,13] > 1.5)


down_LPS_genelist = rosa_normalize[down_LPS_col, 2]


write.csv(down_LPS_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/down_LPS_genelist.csv")





##########################################
# r968_LPS_6hr vs r968_LPS_24hr  col:11,14
##########################################

#upregulate

up_r968_LPS_col = which(rosa_nor_avg_log2[,14] - rosa_nor_avg_log2[,11] > 2)

up_r968_LPS_genelist = rosa_normalize[up_r968_LPS_col, 2]


write.csv(up_r968_LPS_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/up_r968_LPS_genelist.csv")


#downregulate

down_r968_LPS_col = which(rosa_nor_avg_log2[,10] - rosa_nor_avg_log2[,13] > 1.5)


down_r968_LPS_genelist = rosa_normalize[down_r968_LPS_col, 2]


write.csv(down_r968_LPS_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/down_r968_LPS_genelist.csv")





###################################################
#  r968_6hr vs LPS_6hr vs r968_LPS_6hr  col:9,10,11
###################################################


# upregulate in r968_6hr and r968_LPS_6hr, downregulate in LPS_6hr

#r968_6hr > LPS_6hr
r968_6hr_biggerthan_LPS_6hr_col = which(rosa_nor_avg_log2[,9] - rosa_nor_avg_log2[,10] > 0.5)
r968_6hr_biggerthan_LPS_6hr_genelist = rosa_normalize[r968_6hr_biggerthan_LPS_6hr_col, 2]

#r968_LPS_6hr > LPS_6hr
r968_LPS_6hr_biggerthan_LPS_6hr_col = which(rosa_nor_avg_log2[,11] - rosa_nor_avg_log2[,10] > 0.5)
r968_LPS_6hr_biggerthan_LPS_6hr_genelist = rosa_normalize[r968_LPS_6hr_biggerthan_LPS_6hr_col, 2]

#intersect in [(r968_6hr > LPS_6hr) && (r968_LPS_6hr > LPS_6hr)]
up_r968_LPS_down_LPS_6hr_genelist = intersect(r968_6hr_biggerthan_LPS_6hr_genelist, r968_LPS_6hr_biggerthan_LPS_6hr_genelist)



write.csv(up_r968_LPS_down_LPS_6hr_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/up_r968_LPS_down_LPS_6hr_genelist.csv")





# upregulate in LPS_6hr, downregulate in r968_6hr and r968_LPS_6hr

#LPS_6hr > r968_6hr
LPS_6hr_biggerthan_r968_6hr_col = which(rosa_nor_avg_log2[,10] - rosa_nor_avg_log2[,9] > 0.5)
LPS_6hr_biggerthan_r968_6hr_genelist = rosa_normalize[LPS_6hr_biggerthan_r968_6hr_col, 2]

#LPS_6hr > r968_LPS_6hr
LPS_6hr_biggerthan_r968_LPS_6hr_col = which(rosa_nor_avg_log2[,10] - rosa_nor_avg_log2[,11] > 0.5)
LPS_6hr_biggerthan_r968_LPS_6hr_genelist = rosa_normalize[LPS_6hr_biggerthan_r968_LPS_6hr_col, 2]

#intersect in [(r968_6hr > LPS_6hr) && (r968_LPS_6hr > LPS_6hr)]
up_LPS_down_r968_LPS_6hr_genelist = intersect(LPS_6hr_biggerthan_r968_6hr_genelist, LPS_6hr_biggerthan_r968_LPS_6hr_genelist)



write.csv(up_LPS_down_r968_LPS_6hr_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/up_LPS_down_r968_LPS_6hr_genelist.csv")








#######################################################
#  r968_24hr vs LPS_24hr vs r968_LPS_24hr  col:12,13,14
#######################################################


# upregulate in r968_24hr and r968_LPS_24hr, downregulate in LPS_24hr

#r968_24hr > LPS_24hr
r968_24hr_biggerthan_LPS_24hr_col = which(rosa_nor_avg_log2[,12] - rosa_nor_avg_log2[,13] > 1)
r968_24hr_biggerthan_LPS_24hr_genelist = rosa_normalize[r968_24hr_biggerthan_LPS_24hr_col, 2]

#r968_LPS_24hr > LPS_24hr
r968_LPS_24hr_biggerthan_LPS_24hr_col = which(rosa_nor_avg_log2[,14] - rosa_nor_avg_log2[,13] > 1)
r968_LPS_24hr_biggerthan_LPS_24hr_genelist = rosa_normalize[r968_LPS_24hr_biggerthan_LPS_24hr_col, 2]

#intersect in [(r968_24hr > LPS_24hr) && (r968_LPS_24hr > LPS_24hr)]
up_r968_LPS_down_LPS_24hr_genelist = intersect(r968_24hr_biggerthan_LPS_24hr_genelist, r968_LPS_24hr_biggerthan_LPS_24hr_genelist)



write.csv(up_r968_LPS_down_LPS_24hr_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/up_r968_LPS_down_LPS_24hr_genelist.csv")





# upregulate in LPS_24hr, downregulate in r968_24hr and r968_LPS_24hr

#LPS_24hr > r968_24hr
LPS_24hr_biggerthan_r968_24hr_col = which(rosa_nor_avg_log2[,13] - rosa_nor_avg_log2[,12] > 0.5)
LPS_24hr_biggerthan_r968_24hr_genelist = rosa_normalize[LPS_24hr_biggerthan_r968_24hr_col, 2]

#LPS_24hr > r968_LPS_24hr
LPS_24hr_biggerthan_r968_LPS_24hr_col = which(rosa_nor_avg_log2[,13] - rosa_nor_avg_log2[,14] > 0.5)
LPS_24hr_biggerthan_r968_LPS_24hr_genelist = rosa_normalize[LPS_24hr_biggerthan_r968_LPS_24hr_col, 2]

#intersect in [(r968_24hr > LPS_24hr) && (r968_LPS_24hr > LPS_24hr)]
up_LPS_down_r968_LPS_24hr_genelist = intersect(LPS_24hr_biggerthan_r968_24hr_genelist, LPS_24hr_biggerthan_r968_LPS_24hr_genelist)



write.csv(up_LPS_down_r968_LPS_24hr_genelist, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/up_down_regulate_genelist/up_LPS_down_r968_LPS_24hr_genelist.csv")
