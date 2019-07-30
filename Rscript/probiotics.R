#probiotics
#PINK1, CCT2


########################
# set working dictionary
########################
setwd("c:/Users/Jade.Hou/Desktop/microarray")



#################################
#break the data frame -> unfactor
#################################
library(varhandle)



################
#read probiotics
################

probiotics = read.csv("C:/Users/Jade.Hou/Desktop/microarray/R1_data/probiotics.csv", header = T)

######
#PINK1
######

#PINK1 gene symbol
probiotics[11748, 54]

#PINK1 log2 ratio
tci633_24hr <- unfactor(probiotics[11748, 12])
tci633_6hr <- unfactor(probiotics[11748, 13])
tci633_3hr <- unfactor(probiotics[11748, 14])

mix_24hr <- unfactor(probiotics[11748, 15])
mix_6hr <- unfactor(probiotics[11748, 16])
mix_3hr <- unfactor(probiotics[11748, 17])

tci068_24hr <- unfactor(probiotics[11748, 18])

pink1 = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(pink1, xlab = "Dose", ylab = "log2 Expression", main = "PINK1", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )





######
#CCT2
######

#CCT2 gene symbol
probiotics[9486, 54]

#CCT2 log2 ratio
tci633_24hr <- unfactor(probiotics[9486, 12])
tci633_6hr <- unfactor(probiotics[9486, 13])
tci633_3hr <- unfactor(probiotics[9486, 14])

mix_24hr <- unfactor(probiotics[9486, 15])
mix_6hr <- unfactor(probiotics[9486, 16])
mix_3hr <- unfactor(probiotics[9486, 17])

tci068_24hr <- unfactor(probiotics[9486, 18])

CCT2 = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(CCT2, xlab = "Dose", ylab = "log2 Expression", main = "CCT2", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )


CCT2 = c(tci633_3hr, tci633_6hr)
barplot(CCT2, xlab = "Dose", ylab = "log2 Expression", main = "CCT2", names.arg = c("tci633_3hr", "tci633_6hr"), col = c("lightblue1", "lightskyblue") )


########
#CCT5(1)
########

#CCT5 gene symbol
probiotics[181, 54]

#CCT5 log2 ratio
tci633_24hr <- unfactor(probiotics[181, 12])
tci633_6hr <- unfactor(probiotics[181, 13])
tci633_3hr <- unfactor(probiotics[181, 14])

mix_24hr <- unfactor(probiotics[181, 15])
mix_6hr <- unfactor(probiotics[181, 16])
mix_3hr <- unfactor(probiotics[181, 17])

tci068_24hr <- unfactor(probiotics[181, 18])

CCT5 = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression", main = "CCT5", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )


CCT5 = c(tci633_3hr, tci633_6hr)
barplot(CCT5, xlab = "Dose", ylab = "log2 Expression", main = "CCT5", names.arg = c("tci633_3hr", "tci633_6hr"), col = c("lightblue1", "lightskyblue") )




########
#CCT5(2)
########

#CCT5 gene symbol
probiotics[19967, 54]

#CCT5 log2 ratio
tci633_24hr <- unfactor(probiotics[19967, 12])
tci633_6hr <- unfactor(probiotics[19967, 13])
tci633_3hr <- unfactor(probiotics[19967, 14])

mix_24hr <- unfactor(probiotics[19967, 15])
mix_6hr <- unfactor(probiotics[19967, 16])
mix_3hr <- unfactor(probiotics[19967, 17])

tci068_24hr <- unfactor(probiotics[19967, 18])

CCT5 = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(CCT5, xlab = "Dose", ylab = "log2 Expression", main = "CCT5", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )







######
#CCT6A
######

#CCT6A gene symbol
probiotics[3005, 54]

#CCT6A log2 ratio
tci633_24hr <- unfactor(probiotics[3005, 12])
tci633_6hr <- unfactor(probiotics[3005, 13])
tci633_3hr <- unfactor(probiotics[3005, 14])

mix_24hr <- unfactor(probiotics[3005, 15])
mix_6hr <- unfactor(probiotics[3005, 16])
mix_3hr <- unfactor(probiotics[3005, 17])

tci068_24hr <- unfactor(probiotics[3005, 18])

CCT6A = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(CCT6A, xlab = "Dose", ylab = "log2 Expression", main = "CCT6A", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )





#########
#CCT7 (1)
#########

#CCT7 gene symbol
probiotics[10398, 54]

#CCT7 log2 ratio
tci633_24hr <- unfactor(probiotics[10398, 12])
tci633_6hr <- unfactor(probiotics[10398, 13])
tci633_3hr <- unfactor(probiotics[10398, 14])

mix_24hr <- unfactor(probiotics[10398, 15])
mix_6hr <- unfactor(probiotics[10398, 16])
mix_3hr <- unfactor(probiotics[10398, 17])

tci068_24hr <- unfactor(probiotics[10398, 18])

CCT7 = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression", main = "CCT7", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )






#########
#CCT7 (2)
#########

#CCT7 gene symbol
probiotics[15753, 54]

#CCT7 log2 ratio
tci633_24hr <- unfactor(probiotics[15753, 12])
tci633_6hr <- unfactor(probiotics[15753, 13])
tci633_3hr <- unfactor(probiotics[15753, 14])

mix_24hr <- unfactor(probiotics[15753, 15])
mix_6hr <- unfactor(probiotics[15753, 16])
mix_3hr <- unfactor(probiotics[15753, 17])

tci068_24hr <- unfactor(probiotics[15753, 18])

CCT7 = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(CCT7, xlab = "Dose", ylab = "log2 Expression", main = "CCT7", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )


CCT7 = c(tci633_3hr, tci633_6hr)
barplot(CCT7, xlab = "Dose", ylab = "log2 Expression", main = "CCT7", names.arg = c("tci633_3hr", "tci633_6hr"), col = c("lightblue1", "lightskyblue") )




#####
#CCT8
#####

#CCT8 gene symbol
probiotics[15996, 54]

#CCT8 log2 ratio
tci633_24hr <- unfactor(probiotics[15996, 12])
tci633_6hr <- unfactor(probiotics[15996, 13])
tci633_3hr <- unfactor(probiotics[15996, 14])

mix_24hr <- unfactor(probiotics[15996, 15])
mix_6hr <- unfactor(probiotics[15996, 16])
mix_3hr <- unfactor(probiotics[15996, 17])

tci068_24hr <- unfactor(probiotics[15996, 18])

CCT8 = c(tci633_3hr, tci633_6hr, tci633_24hr, mix_3hr, mix_6hr, mix_24hr, tci068_24hr)

#barplot catlog vs log2 ratio

barplot(CCT8, xlab = "Dose", ylab = "log2 Expression", main = "CCT8", names.arg = c("tci633_3hr", "tci633_6hr", "tci633_24hr", "mix_3hr", "mix_6hr", "mix_24hr", "tci068_24hr"), col = c("lightblue1", "lightskyblue", "deepskyblue", "darkseagreen1", "darkseagreen2", "darkseagreen3", "gray") )











#######################################
#log2 expression ratio > 1   upregulate
#######################################
tci633_24hr <- as.numeric(unfactor(probiotics[1:27986, 12]))
tci633_6hr <- as.numeric(unfactor(probiotics[1:27986, 13]))
tci633_3hr <- as.numeric(unfactor(probiotics[1:27986, 14]))

mix_24hr <- as.numeric(unfactor(probiotics[1:27986, 15]))
mix_6hr <- as.numeric(unfactor(probiotics[1:27986, 16]))
mix_3hr <- as.numeric(unfactor(probiotics[1:27986, 17]))

tci068_24hr <- as.numeric(unfactor(probiotics[1:27986, 18]))



# tci633_24hr upregulate gene symbol
up_tci633_24hr = which(tci633_24hr > 1)

up_tci633_24hr_gene = unfactor(probiotics[up_tci633_24hr, 54])


# tci633_6hr upregulate gene smybol
up_tci633_6hr = which(tci633_6hr > 1)

up_tci633_6hr_gene = unfactor(probiotics[up_tci633_6hr, 54])


# tci633_3hr upregulate gene smybol
up_tci633_3hr = which(tci633_3hr > 1)

up_tci633_3hr_gene = unfactor(probiotics[up_tci633_3hr, 54])


# mix_24hr upregulate gene smybol
up_mix_24hr = which(mix_24hr > 1)

up_mix_24hr_gene = unfactor(probiotics[up_mix_24hr, 54])


# mix_6hr upregulate gene smybol
up_mix_6hr = which(mix_6hr > 1)

up_mix_6hr_gene = unfactor(probiotics[up_mix_6hr, 54])

# mix_3hr upregulate gene smybol
up_mix_3hr = which(mix_3hr > 1)

up_mix_3hr_gene = unfactor(probiotics[up_mix_3hr, 54])

# tci068_24hr upregulate gene smybol
up_tci068_24hr = which(mix_3hr > 1)

up_tci068_24hr_gene = unfactor(probiotics[up_tci068_24hr, 54])




#find intersection of tci633_24hr and tci633_6hr and b25_48hr
upregulate_probiotics_list_tci633_24_6 = intersect(up_tci633_24hr_gene, up_tci633_6hr_gene)
upregulate_probiotics_list_tci633 = intersect(upregulate_probiotics_list_tci633_24_6, up_tci633_3hr_gene)

#write upregulate_buckwheat_list_25
write.csv(upregulate_probiotics_list_tci633, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_probiotics_list_tci633.csv")




#find intersection of mix_24hr and mix_6hr and b25_48hr
upregulate_probiotics_list_mix_24_6 = intersect(up_mix_24hr_gene, up_mix_6hr_gene)
upregulate_probiotics_list_mix = intersect(upregulate_probiotics_list_mix_24_6, up_mix_3hr_gene)

#write upregulate_buckwheat_list_25
write.csv(upregulate_probiotics_list_mix, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_probiotics_list_mix.csv")



#find intersection of upregulate tci633 and mix

upregulate_probiotics_list = intersect(upregulate_probiotics_list_tci633, upregulate_probiotics_list_mix)

#write upregulate_buckwheat_list_25
write.csv(upregulate_probiotics_list, "c:/Users/Jade.Hou/Desktop/microarray/upregulate_probiotics_list.csv")









#######################################
#log2 expression ratio < -1   downregulate
#######################################
tci633_24hr <- as.numeric(unfactor(probiotics[1:27986, 12]))
tci633_6hr <- as.numeric(unfactor(probiotics[1:27986, 13]))
tci633_3hr <- as.numeric(unfactor(probiotics[1:27986, 14]))

mix_24hr <- as.numeric(unfactor(probiotics[1:27986, 15]))
mix_6hr <- as.numeric(unfactor(probiotics[1:27986, 16]))
mix_3hr <- as.numeric(unfactor(probiotics[1:27986, 17]))

tci068_24hr <- as.numeric(unfactor(probiotics[1:27986, 18]))



# tci633_24hr downregulate gene symbol
down_tci633_24hr = which(tci633_24hr < -1)

down_tci633_24hr_gene = unfactor(probiotics[down_tci633_24hr, 54])


# tci633_6hr downregulate gene smybol
down_tci633_6hr = which(tci633_6hr < -1)

down_tci633_6hr_gene = unfactor(probiotics[down_tci633_6hr, 54])


# tci633_3hr downregulate gene smybol
down_tci633_3hr = which(tci633_3hr < -1)

down_tci633_3hr_gene = unfactor(probiotics[down_tci633_3hr, 54])


# mix_24hr downregulate gene smybol
down_mix_24hr = which(mix_24hr < -1)

down_mix_24hr_gene = unfactor(probiotics[down_mix_24hr, 54])


# mix_6hr downregulate gene smybol
down_mix_6hr = which(mix_6hr < -1)

down_mix_6hr_gene = unfactor(probiotics[down_mix_6hr, 54])

# mix_3hr downregulate gene smybol
down_mix_3hr = which(mix_3hr < -1)

down_mix_3hr_gene = unfactor(probiotics[down_mix_3hr, 54])

# tci068_24hr downregulate gene smybol
down_tci068_24hr = which(mix_3hr < -1)

down_tci068_24hr_gene = unfactor(probiotics[down_tci068_24hr, 54])




#find intersection of tci633_24hr and tci633_6hr and b25_48hr
downregulate_probiotics_list_tci633_24_6 = intersect(down_tci633_24hr_gene, down_tci633_6hr_gene)
downregulate_probiotics_list_tci633 = intersect(downregulate_probiotics_list_tci633_24_6, down_tci633_3hr_gene)

#write upregulate_buckwheat_list_25
write.csv(downregulate_probiotics_list_tci633, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_probiotics_list_tci633.csv")




#find intersection of mix_24hr and mix_6hr and b25_48hr
downregulate_probiotics_list_mix_24_6 = intersect(down_mix_24hr_gene, down_mix_6hr_gene)
downregulate_probiotics_list_mix = intersect(downregulate_probiotics_list_mix_24_6, down_mix_3hr_gene)

#write downregulate_buckwheat_list_25
write.csv(downregulate_probiotics_list_mix, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_probiotics_list_mix.csv")


#find intersection of upregulate tci633 and mix

downregulate_probiotics_list = intersect(downregulate_probiotics_list_tci633, downregulate_probiotics_list_mix)

#write upregulate_buckwheat_list_25
write.csv(downregulate_probiotics_list, "c:/Users/Jade.Hou/Desktop/microarray/downregulate_probiotics_list.csv")
