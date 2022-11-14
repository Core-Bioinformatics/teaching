#!/usr/bin/env Rscript

cran.packages<-c("caret",
                 "gmodels",
                 "tidyverse",
                 "rpart",
                 "rpart.plot",
                 "party",
                 "randomForest",
                 "e1071",
                 "Rtsne",
                 "dbscan",
                 "C50",
                 "UpSetR",
                 "RColorBrewer",
                 "GGally",
                 "ggfortify",
                 "reshape2",
                 "plyr",
                 "corrplot",
                 "pROC",
                 "scatterplot3d",
                 "dendextend", 
                 "magrittr",
                 "cluster", 
                 "gplots",
                 "methods", 
                 "class",
                 "datasets", 
                 "caTools",
                 "ggplot2",
                 "ggdendro",
                 "doParallel",
                 "devtools",
                 "mlbench",
                 "plot3D",  
                 "ROCR",
                 "UsingR",
                 "rafalib",
                 "downloader",
                 "lattice",
                 "stepPlr",
                 "arm", 
                 "kernlab",
                 "nnet",
                 "neuralnet",
                 "MASS",
                 "NeuralNetTools",
                 "ISLR", 
                 "boot",
                 "faraway",
                 "CVST", 
                 "readr")

bioconductor.packages<-c("EBImage")

#Installing CRAN packages
new.packages <- cran.packages[!(cran.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

#Installing bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()
new.bio.packages<-bioconductor.packages[!(bioconductor.packages %in% installed.packages()[,"Package"])]
if(length(new.bio.packages)) BiocManager::install(new.bio.packages)

for (package in cran.packages){
  eval(bquote(library(.(package))))
}

for (package in bioconductor.packages){
  eval(bquote(library(.(package))))
}

# install packages from other repositories
devtools::install_github("ManchesterBioinference/DEtime")


library("caret",
library("gmodels",
library("tidyverse",
library("rpart",
library("rpart.plot",
library("party",
library("randomForest",
library("e1071",
library("Rtsne",
library("dbscan",
library("C50",
library("UpSetR",
library("RColorBrewer",
library("GGally",
library("ggfortify",
library("reshape2",
library("plyr",
library("corrplot",
library("pROC",
"scatterplot3d",
"dendextend", 
"magrittr",
"cluster", 
"gplots",
"methods", 
"class",
"datasets", 
"caTools",
"ggplot2",
"ggdendro",
"doParallel",
"devtools",
"mlbench",
"plot3D",  
"ROCR",
"UsingR",
"rafalib",
"downloader",
"lattice",
"stepPlr",
"arm", 
"kernlab",
"nnet",
"neuralnet",
"MASS",
"NeuralNetTools",
"ISLR", 
"boot",
"faraway",
"CVST", 
"readr")
