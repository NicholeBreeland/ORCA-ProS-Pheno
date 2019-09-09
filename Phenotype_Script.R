P1.data <- read.csv("P1_Data.csv", stringsAsFactors = FALSE)

P1.data[P1.data == 999] <- NA
P1.data[P1.data == 777] <- NA
P1.data[P1.data == 888] <- NA

#Study in only
P1.data_in <-P1.data[which(P1.data$Study_inout == 1),]

#Percent missing for each variable
colMeans(is.na(P1.data_in)*100)
