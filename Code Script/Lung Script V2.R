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

combine <- cbind(pre, second)

common_rows <- intersect(row.names(pre), row.names(second))

# Print the common row names
print(common_rows)

