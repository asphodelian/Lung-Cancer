###########
# Library #
###########

library(dplyr)
library(factoextra)
library(ggfortify)
library(ggplot2)
library(gridExtra)
library(openxlsx)
library(psych)
library(readr)
library(readxl)
library(SKAT)
library(tidyr)
library(xlsx)

############
# Datasets #
############

pre <- read_excel("C:/Users/knigh/OneDrive/Desktop/Github/Lung-Cancer/Datasets/predose.xlsx")
dim(pre)

second <- read_excel("C:/Users/knigh/OneDrive/Desktop/Github/Lung-Cancer/Datasets/2ndose.xlsx")
dim(second)

##########
# Ratios #
##########

pre <- pre[order(pre$Patient.ID, decreasing = TRUE),]
second <- second[order(second$Patient.ID, decreasing = TRUE),]

intersect(row.names(pre), row.names(second))

matching <- pre$Patient.ID == second$Patient.ID
all(matching)

# Find rows where "Patient.ID" values do not match
which(pre$Patient.ID != second$Patient.ID)

# Print the indices of mismatched rows
print(mismatched_rows)


combine <- cbind(pre, second)



