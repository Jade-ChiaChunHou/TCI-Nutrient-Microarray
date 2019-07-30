########################
# set working dictionary
########################
setwd("c:/Users/Jade.Hou/Desktop/microarray")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)




#read buckwheat data

buckwheat = read.csv("C:/Users/Jade.Hou/Desktop/microarray/R1_data/buckwheat.csv", header = T)




######
#PINK1
######

#PINK1 gene symbol
buckwheat[12979, 1]

#PINK1 log2 ratio
b25_6hr <- unfactor(buckwheat[12979, 16])
b25_24hr <- unfactor(buckwheat[12979, 17])
b25_48hr <- unfactor(buckwheat[12979, 18])

b50_6hr <- unfactor(buckwheat[12979, 19])
b50_24hr <- unfactor(buckwheat[12979, 20])
b50_48hr <- unfactor(buckwheat[12979, 21])

pink1 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(pink1, xlab = "Dose", ylab = "log2 Expression Ratio", main = "PINK1", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))






pink1 = c(b25_24hr, b25_48hr, b50_24hr, b50_48hr)

barplot(pink1, xlab = "Dose", ylab = "log2 Expression Ratio", main = "PINK1", names.arg = c("0.25mg 24hr", "0.25mg 48hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "darkseagreen1", "darkseagreen2"))

pink1 = c(b50_6hr, b50_24hr, b50_48hr)

barplot(pink1, xlab = "Dose", ylab = "log2 Expression Ratio", main = "PINK1", names.arg = c("0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("darkseagreen1", "darkseagreen2", "darkseagreen3"))

########
#CCT2(1)
########

#CCT2 gene symbol
buckwheat[10573, 1]

#CCT2 log2 ratio
b25_6hr <- unfactor(buckwheat[10573, 16])
b25_24hr <- unfactor(buckwheat[10573, 17])
b25_48hr <- unfactor(buckwheat[10573, 18])

b50_6hr <- unfactor(buckwheat[10573, 19])
b50_24hr <- unfactor(buckwheat[10573, 20])
b50_48hr <- unfactor(buckwheat[10573, 21])

CCT2 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT2", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))



########
#CCT2(2)
########

#CCT2 gene symbol
buckwheat[20987, 1]

#CCT2 log2 ratio
b25_6hr <- unfactor(buckwheat[20987, 16])
b25_24hr <- unfactor(buckwheat[20987, 17])
b25_48hr <- unfactor(buckwheat[20987, 18])

b50_6hr <- unfactor(buckwheat[20987, 19])
b50_24hr <- unfactor(buckwheat[20987, 20])
b50_48hr <- unfactor(buckwheat[20987, 21])

CCT2 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT2", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))



CCT2 = c(b25_6hr, b25_24hr, b25_48hr)

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT2", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue"))




########
#CCT5(1)
########

#CCT5 gene symbol
buckwheat[190, 1]

#CCT5 log2 ratio
b25_6hr <- unfactor(buckwheat[190, 16])
b25_24hr <- unfactor(buckwheat[190, 17])
b25_48hr <- unfactor(buckwheat[190, 18])

b50_6hr <- unfactor(buckwheat[190, 19])
b50_24hr <- unfactor(buckwheat[190, 20])
b50_48hr <- unfactor(buckwheat[190, 21])

CCT5 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT5", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))





########
#CCT5(2)
########

#CCT5 gene symbol
buckwheat[22700, 1]

#CCT5 log2 ratio
b25_6hr <- unfactor(buckwheat[22700, 16])
b25_24hr <- unfactor(buckwheat[22700, 17])
b25_48hr <- unfactor(buckwheat[22700, 18])

b50_6hr <- unfactor(buckwheat[22700, 19])
b50_24hr <- unfactor(buckwheat[22700, 20])
b50_48hr <- unfactor(buckwheat[22700, 21])

CCT5 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT5", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))



######
#CCT6A
######

#CCT6A gene symbol
buckwheat[3209, 1]

#CCT6A log2 ratio
b25_6hr <- unfactor(buckwheat[3209, 16])
b25_24hr <- unfactor(buckwheat[3209, 17])
b25_48hr <- unfactor(buckwheat[3209, 18])

b50_6hr <- unfactor(buckwheat[3209, 19])
b50_24hr <- unfactor(buckwheat[3209, 20])
b50_48hr <- unfactor(buckwheat[3209, 21])

CCT6A = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT6A, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT6A", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))



CCT6A = c(b25_48hr, b50_48hr)
barplot(CCT6A, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT6A", names.arg = c("0.25mg 48hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue"))



########
#CCT7(1)
########

#CCT7 gene symbol
buckwheat[11545, 1]

#CCT7 log2 ratio
b25_6hr <- unfactor(buckwheat[11545, 16])
b25_24hr <- unfactor(buckwheat[11545, 17])
b25_48hr <- unfactor(buckwheat[11545, 18])

b50_6hr <- unfactor(buckwheat[11545, 19])
b50_24hr <- unfactor(buckwheat[11545, 20])
b50_48hr <- unfactor(buckwheat[11545, 21])

CCT7 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))








########
#CCT7(2)
########

#CCT7 gene symbol
buckwheat[17579, 1]

#CCT7 log2 ratio
b25_6hr <- unfactor(buckwheat[17579, 16])
b25_24hr <- unfactor(buckwheat[17579, 17])
b25_48hr <- unfactor(buckwheat[17579, 18])

b50_6hr <- unfactor(buckwheat[17579, 19])
b50_24hr <- unfactor(buckwheat[17579, 20])
b50_48hr <- unfactor(buckwheat[17579, 21])

CCT7 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))


CCT7 = c(b25_48hr, b50_48hr)
barplot(CCT6A, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("0.25mg 48hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue"))



########
#CCT7(3)
########

#CCT7 gene symbol
buckwheat[25379, 1]

#CCT7 log2 ratio
b25_6hr <- unfactor(buckwheat[25379, 16])
b25_24hr <- unfactor(buckwheat[25379, 17])
b25_48hr <- unfactor(buckwheat[25379, 18])

b50_6hr <- unfactor(buckwheat[25379, 19])
b50_24hr <- unfactor(buckwheat[25379, 20])
b50_48hr <- unfactor(buckwheat[25379, 21])

CCT7 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))



#####
#CCT8
#####

#CCT8 gene symbol
buckwheat[17864, 1]

#CCT8 log2 ratio
b25_6hr <- unfactor(buckwheat[17864, 16])
b25_24hr <- unfactor(buckwheat[17864, 17])
b25_48hr <- unfactor(buckwheat[17864, 18])

b50_6hr <- unfactor(buckwheat[17864, 19])
b50_24hr <- unfactor(buckwheat[17864, 20])
b50_48hr <- unfactor(buckwheat[17864, 21])

CCT8 = c(b25_6hr, b25_24hr, b25_48hr, b50_6hr, b50_24hr, b50_48hr)

#barplot catlog vs log2 ratio

barplot(CCT8, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT8", names.arg = c("0.25mg 6hr", "0.25mg 24hr", "0.25mg 48hr", "0.50mg 6hr", "0.50mg 24hr", "0.50mg 48hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3"))


CCT8 = c(b50_6hr, b50_24hr)
barplot(CCT6A, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT8", names.arg = c("0.50mg 6hr", "0.50mg 24hr"), col = c("lightblue1", "lightskyblue"))




#########################################
#Get gene symbol from GeneAnnotation file
#########################################

GeneAnnotation = read.csv("C:/Users/Jade.Hou/Desktop/microarray/R1_data/GeneAnnotation.csv", header = T)

#######################################
#log2 expression ratio > 1   upregulate
#######################################

b25_6hr <- as.numeric(unfactor(buckwheat[1:31742, 16]))
b25_24hr <- as.numeric(unfactor(buckwheat[1:31742, 17]))
b25_48hr <- as.numeric(unfactor(buckwheat[1:31742, 18]))

b50_6hr <- as.numeric(unfactor(buckwheat[1:31742, 19]))
b50_24hr <- as.numeric(unfactor(buckwheat[1:31742, 20]))
b50_48hr <- as.numeric(unfactor(buckwheat[1:31742, 21]))


#####################
#0.25mg 6 & 24 & 48hr
#####################


# b25_6hr upregulate gene symbol
up_b25_6hr = which(b25_6hr > 1)

up_b25_6hr_gene = unfactor(GeneAnnotation[up_b25_6hr, 2])


# b25_24hr upregulate gene symbol
up_b25_24hr = which(b25_24hr > 1)

up_b25_24hr_gene = unfactor(GeneAnnotation[up_b25_24hr, 2])


# b25_48hr upregulate gene symbol
up_b25_48hr = which(b25_48hr > 1)

up_b25_48hr_gene = unfactor(GeneAnnotation[up_b25_48hr, 2])



#find intersection of b25_6hr and b25_24hr and b25_48hr
upregulate_buckwheat_list_25_6_24 = intersect(up_b25_6hr_gene, up_b25_24hr_gene)
upregulate_buckwheat_list_25 = intersect(upregulate_buckwheat_list_25_6_24, up_b25_48hr_gene)

#write upregulate_buckwheat_list_25
write.csv(upregulate_buckwheat_list_25, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_buckwheat_list_25.csv")





#####################
#0.50mg 6 & 24 & 48hr
#####################


# b50_6hr upregulate gene symbol
up_b50_6hr = which(b50_6hr > 1)

up_b50_6hr_gene = unfactor(GeneAnnotation[up_b50_6hr, 2])


# b50_24hr upregulate gene symbol
up_b50_24hr = which(b50_24hr > 1)

up_b50_24hr_gene = unfactor(GeneAnnotation[up_b50_24hr, 2])


# b50_48hr upregulate gene symbol
up_b50_48hr = which(b50_48hr > 1)

up_b50_48hr_gene = unfactor(GeneAnnotation[up_b50_48hr, 2])



#find intersection of b25_6hr and b25_24hr and b25_48hr
upregulate_buckwheat_list_50_6_24 = intersect(up_b50_6hr_gene, up_b50_24hr_gene)
upregulate_buckwheat_list_50 = intersect(upregulate_buckwheat_list_50_6_24, up_b50_48hr_gene)

#write upregulate_buckwheat_list_50
write.csv(upregulate_buckwheat_list_50, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_buckwheat_list_50.csv")





#find intersection of upregulate_buckwheat_list_25 and upregulate_buckwheat_list_50
upregulate_buckwheat_list_25and50 = intersect(upregulate_buckwheat_list_25, upregulate_buckwheat_list_50)


#write upregulate_buckwheat_list_25and50
write.csv(upregulate_buckwheat_list_25and50, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_buckwheat_list_25and50.csv")










#######################################
#log2 expression ratio < -1 downregulate
#######################################

b25_6hr <- as.numeric(unfactor(buckwheat[1:31742, 16]))
b25_24hr <- as.numeric(unfactor(buckwheat[1:31742, 17]))
b25_48hr <- as.numeric(unfactor(buckwheat[1:31742, 18]))

b50_6hr <- as.numeric(unfactor(buckwheat[1:31742, 19]))
b50_24hr <- as.numeric(unfactor(buckwheat[1:31742, 20]))
b50_48hr <- as.numeric(unfactor(buckwheat[1:31742, 21]))


#####################
#0.25mg 6 & 24 & 48hr
#####################


# b25_6hr downregulate gene symbol
down_b25_6hr = which(b25_6hr < -1)

down_b25_6hr_gene = unfactor(GeneAnnotation[down_b25_6hr, 2])


# b25_24hr downregulate gene symbol
down_b25_24hr = which(b25_24hr < -1)

down_b25_24hr_gene = unfactor(GeneAnnotation[down_b25_24hr, 2])


# b25_48hr downregulate gene symbol
down_b25_48hr = which(b25_48hr < -1)

down_b25_48hr_gene = unfactor(GeneAnnotation[down_b25_48hr, 2])



#find intersection of downregulate b25_6hr and b25_24hr and b25_48hr
downregulate_buckwheat_list_25_6_24 = intersect(down_b25_6hr_gene, down_b25_24hr_gene)
downregulate_buckwheat_list_25 = intersect(downregulate_buckwheat_list_25_6_24, down_b25_48hr_gene)

#write upregulate_buckwheat_list_25
write.csv(downregulate_buckwheat_list_25, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_buckwheat_list_25.csv")





#####################
#0.50mg 6 & 24 & 48hr
#####################


# b50_6hr downregulate gene symbol
down_b50_6hr = which(b50_6hr < -1)

down_b50_6hr_gene = unfactor(GeneAnnotation[down_b50_6hr, 2])


# b50_24hr downregulate gene symbol
down_b50_24hr = which(b50_24hr < -1)

down_b50_24hr_gene = unfactor(GeneAnnotation[down_b50_24hr, 2])


# b50_48hr downregulate gene symbol
down_b50_48hr = which(b50_48hr < -1)

down_b50_48hr_gene = unfactor(GeneAnnotation[down_b50_48hr, 2])



#find intersection of downregulate b25_6hr and b25_24hr and b25_48hr
downregulate_buckwheat_list_50_6_24 = intersect(down_b50_6hr_gene, down_b50_24hr_gene)
downregulate_buckwheat_list_50 = intersect(downregulate_buckwheat_list_50_6_24, down_b50_48hr_gene)

#write downregulate_buckwheat_list_50
write.csv(downregulate_buckwheat_list_50, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_buckwheat_list_50.csv")





#find intersection of downregulate_buckwheat_list_25 and downregulate_buckwheat_list_50
downregulate_buckwheat_list_25and50 = intersect(downregulate_buckwheat_list_25, downregulate_buckwheat_list_50)


#write downregulate_buckwheat_list_25and50
write.csv(downregulate_buckwheat_list_25and50, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_buckwheat_list_25and50.csv")
