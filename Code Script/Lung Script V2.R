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

pre <- read_excel("C:/Users/knigh/OneDrive/Desktop/Github/Lung-Cancer/Datasetspredose.xlsx")
dim(pre)

second <- read_excel("C:/Users/knigh/OneDrive/Desktop/Github/Lung-Cancer/Datasets2ndose.xlsx")
dim(second)
