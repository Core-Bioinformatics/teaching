#!/usr/bin/env Rscript

cran.packages = c("tidyr",
                  "ggplot2",
                  "ggrepel",
                  "gridExtra",
                  "NMF",
                  "GGally",
                  "gprofiler2",
                  "UpSetR"
)

bioconductor.packages = c("preprocessCore",
                           "edgeR",
                           "DESeq2")

new.packages <- cran.packages[!(cran.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install()
new.bio.packages<-bioconductor.packages[!(bioconductor.packages %in% installed.packages()[,"Package"])]
if(length(new.bio.packages)) BiocManager::install(new.bio.packages)

library(tidyr)
library(ggplot2); theme_set(theme_bw())
library(ggrepel)
library(gridExtra)
library(NMF)
library(GGally)
library(gprofiler2)
library(UpSetR)
library(preprocessCore)
library(edgeR)
library(DESeq2)

