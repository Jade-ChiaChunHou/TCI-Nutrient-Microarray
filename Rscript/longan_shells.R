########################
# set working dictionary
########################
setwd("c:/Users/Jade.Hou/Desktop/microarray")


#################################
#break the data frame -> unfactor
#################################
library(varhandle)




#read longan_shells data

longan_shells = read.csv("C:/Users/Jade.Hou/Desktop/microarray/R1_data/longan_shells.csv", header = T)



######
#PINK1
######

#PINK1 gene symbol
longan_shells[11508, 2]

#PINK1 log2 ratio
l25_6hr <- unfactor(longan_shells[11508, 13])
l25_48hr <- unfactor(longan_shells[11508, 14])


pink1 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(pink1, xlab = "Dose", ylab = "log2 Expression Ratio", main = "PINK1", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))



########
#CCT2(1)
########

#CCT2 gene symbol
longan_shells[18041, 2]

#CCT2 log2 ratio
l25_6hr <- unfactor(longan_shells[18041, 13])
l25_48hr <- unfactor(longan_shells[18041, 14])


CCT2 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT2", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))


########
#CCT2(2)
########

#CCT2 gene symbol
longan_shells[9238, 2]

#CCT2 log2 ratio
l25_6hr <- unfactor(longan_shells[9238, 13])
l25_48hr <- unfactor(longan_shells[9238, 14])


CCT2 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT2", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))


########
#CCT5(1)
########

#CCT5 gene symbol
longan_shells[19485, 2]

#CCT5 log2 ratio
l25_6hr <- unfactor(longan_shells[19485, 13])
l25_48hr <- unfactor(longan_shells[19485, 14])


CCT5 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT5", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))


########
#CCT5(2)
########

#CCT5 gene symbol
longan_shells[184, 2]

#CCT5 log2 ratio
l25_6hr <- unfactor(longan_shells[184, 13])
l25_48hr <- unfactor(longan_shells[184, 14])


CCT5 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT5", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))


########
#CCT6A
########

#CCT6A gene symbol
longan_shells[3008, 2]

#CCT6A log2 ratio
l25_6hr <- unfactor(longan_shells[3008, 13])
l25_48hr <- unfactor(longan_shells[3008, 14])


CCT6A = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT6A, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT6A", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))



########
#CCT7(1)
########

#CCT7 gene symbol
longan_shells[10155, 2]

#CCT7 log2 ratio
l25_6hr <- unfactor(longan_shells[10155, 13])
l25_48hr <- unfactor(longan_shells[10155, 14])


CCT7 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))


########
#CCT7(2)
########

#CCT7 gene symbol
longan_shells[15635, 2]

#CCT7 log2 ratio
l25_6hr <- unfactor(longan_shells[15635, 13])
l25_48hr <- unfactor(longan_shells[15635, 14])


CCT7 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))


########
#CCT7(3)
########

#CCT7 gene symbol
longan_shells[28005, 2]

#CCT7 log2 ratio
l25_6hr <- unfactor(longan_shells[28005, 13])
l25_48hr <- unfactor(longan_shells[28005, 14])


CCT7 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT7", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))


########
#CCT8
########

#CCT8 gene symbol
longan_shells[15878, 2]

#CCT8 log2 ratio
l25_6hr <- unfactor(longan_shells[15878, 13])
l25_48hr <- unfactor(longan_shells[15878, 14])


CCT8 = c(l25_6hr, l25_48hr)

#barplot catlog vs log2 ratio

barplot(CCT8, xlab = "Dose", ylab = "log2 Expression Ratio", main = "CCT8", names.arg = c("0.25mg 6hr", "0.25mg 48hr"), col = c("lightblue1", "lightskyblue"))




#######################################
#log2 expression ratio > 1   upregulate
#######################################
l25_6hr <- as.numeric(unfactor(longan_shells[1:28264, 13]))
l25_48hr <- as.numeric(unfactor(longan_shells[1:28264, 14]))



# l25_6hr upregulate gene symbol
up_l25_6hr = which(l25_6hr > 1)

up_l25_6hr_gene = unfactor(longan_shells[up_l25_6hr, 2])


# l25_48hr upregulate gene symbol
up_l25_48hr = which(l25_48hr > 1)

up_l25_48hr_gene = unfactor(longan_shells[up_l25_48hr, 2])


#find intersection of l25_6hr and l25_48hr
upregulate_longan_list = intersect(up_l25_6hr_gene, up_l25_48hr_gene)

#write upregulate_longan_list
write.csv(upregulate_longan_list, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_longan_list.csv")



##################################
#venn diagram for upregulate genes
##################################
install.packages('VennDiagram')
library(VennDiagram)

grid.newpage()
draw.pairwise.venn(area1 = 1328, area2 = 374, cross.area = 229, category = c("0.25mg 48hr", "0.25mg 6hr"), lty = rep("blank", 2), fill = c("light blue", "pink"), cat.cex = c(1.4, 1.4))





#######################################
#log2 expression ratio < -1   downregulate
#######################################
l25_6hr <- as.numeric(unfactor(longan_shells[1:28264, 13]))
l25_48hr <- as.numeric(unfactor(longan_shells[1:28264, 14]))



# l25_6hr downregulate gene symbol
down_l25_6hr = which(l25_6hr < -1)

down_l25_6hr_gene = unfactor(longan_shells[down_l25_6hr, 2])


# l25_48hr downregulate gene symbol
down_l25_48hr = which(l25_48hr < -1)

down_l25_48hr_gene = unfactor(longan_shells[down_l25_48hr, 2])


#find intersection of l25_6hr and l25_48hr
downregulate_longan_list = intersect(down_l25_6hr_gene, down_l25_48hr_gene)

#write upregulate_longan_list
write.csv(downregulate_longan_list, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_longan_list.csv")



##################################
#venn diagram for downregulate genes
##################################
library(VennDiagram)

grid.newpage()
draw.pairwise.venn(area1 = 1862, area2 = 585, cross.area = 305, category = c("0.25mg 48hr", "0.25mg 6hr"), lty = rep("blank", 2), fill = c("light blue", "pink"), cat.cex = c(1.4, 1.4))
