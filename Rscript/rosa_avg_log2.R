########################
# set working dictionary
########################
setwd("C:/Users/User/Desktop/20170814_rosa_R1/rosa/normalize")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)


########################################
# Read rosa normalize 14 microarray data
########################################

rosa_normalize = read.csv("C:/Users/User/Desktop/20170814_rosa_R1/rosa/normalize/rosa_normalize.csv", header = T)

rosa_normalize = unfactor(rosa_normalize)


##########################################
# Average 
# 1. mock_1, mock_3
# 2. r968_6hr_1, r968_6hr_3
# 3. LPS_6hr_1, LPS_6hr_2
# 4. r968_LPS_6hr_1, r968_LPS_6hr_3
# 5. r968_24hr_1, r968_24hr_2, r968_24hr_3
# 6. LPS_24hr_2, LPS_24hr_3
# 7. r968_LPS_24hr_1
##########################################

#average mock col:4,5

mock_avg = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  mock_avg[i] = (rosa_normalize[i,4]+rosa_normalize[i,5])/2
}






#average r968_6hr col: 6,7

r968_6hr_avg = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_6hr_avg[i] = (rosa_normalize[i,6]+rosa_normalize[i,7])/2
}



#average LPS_6hr col: 8,9

LPS_6hr_avg = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  LPS_6hr_avg[i] = (rosa_normalize[i,8]+rosa_normalize[i,9])/2
}




#average r968_LPS_6hr col: 10,11

r968_LPS_6hr_avg = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_LPS_6hr_avg[i] = (rosa_normalize[i,10]+rosa_normalize[i,11])/2
}



#average r968_24hr col: 12,13,14

r968_24hr_avg = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_24hr_avg[i] = (rosa_normalize[i,12]+rosa_normalize[i,13]+rosa_normalize[i,14])/3
}




#average LPS_24hr col: 15,16

LPS_24hr_avg = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  LPS_24hr_avg[i] = (rosa_normalize[i,15]+rosa_normalize[i,16])/2
}



#average r968_LPS_24hr col: 17

r968_LPS_24hr_avg = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_LPS_24hr_avg[i] = rosa_normalize[i,17]
}




# cbind average signals 
rosa_avg = cbind(mock_avg, r968_6hr_avg, LPS_6hr_avg, r968_LPS_6hr_avg, r968_24hr_avg, LPS_24hr_avg, r968_LPS_24hr_avg)






#############
# log2 ratio
#############

# log2 (r968_6hr_avg/mock_avg)

r968_6hr_log2 = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_6hr_log2[i] = log2(r968_6hr_avg[i] / mock_avg[i])
}





# log2 (LPS_6hr_avg/mock_avg)

LPS_6hr_log2 = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  LPS_6hr_log2[i] = log2(LPS_6hr_avg[i] / mock_avg[i])
}




# log2 (r968_LPS_6hr_avg/mock_avg)

r968_LPS_6hr_log2 = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_LPS_6hr_log2[i] = log2(r968_LPS_6hr_avg[i] / mock_avg[i])
}



# log2 (r968_24hr_avg/mock_avg)

r968_24hr_log2 = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_24hr_log2[i] = log2(r968_24hr_avg[i] / mock_avg[i])
}



# log2 (LPS_24hr_avg/mock_avg)

LPS_24hr_log2 = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  LPS_24hr_log2[i] = log2(LPS_24hr_avg[i] / mock_avg[i])
}



# log2 (r968_LPS_24hr_avg/mock_avg)

r968_LPS_24hr_log2 = matrix(NA, nrow = 28264, ncol = 1)


for(i in 1:28264){
  r968_LPS_24hr_log2[i] = log2(r968_LPS_24hr_avg[i] / mock_avg[i])
}



# cbind log2 ratio 
rosa_log2 = cbind(r968_6hr_log2, LPS_6hr_log2, r968_LPS_6hr_log2, r968_24hr_log2, LPS_24hr_log2, r968_LPS_24hr_log2)


#cbind average and log2 ratio
rosa_nor_avg_log2 = cbind(rosa_avg, rosa_log2)


# write rosa_nor_avg_log2
write.csv(rosa_nor_avg_log2, "C:/Users/User/Desktop/20170814_rosa_R1/rosa/normalize/rosa_nor_avg_log2.csv")


