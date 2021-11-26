#!/bin/bash
pathgtf="/opt/bio-shares/bioinf-facility/genomes_collection/HSapiens/GRCh38.p13/Homo_sapiens.GRCh38.101.gtf"

pathbam="/servers/core-bioinf-data/im383/teaching/RNA-Seq/aligned/"
pathout="/home/USSR/im383/Documents/teaching/RNA-Seq/counts/counts_raw.txt"

featureCounts -a ${pathgtf} -o ${pathout} ${pathbam}/*.bam
