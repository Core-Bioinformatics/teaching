#!/bin/bash

#usage ./STAR_paired_end.sh $1_basename $2_path.to.fastqs $3_path.to.output $4_genomeDir $5_runThreadN $6_fastq1 $7_fastq2
STAR 	--runThreadN $5 \
	--genomeDir $4 \
	--readFilesIn $2/$6 $2/$7 \
	--outSAMtype BAM SortedByCoordinate \
	--readFilesCommand zcat \
	--runMode alignReads \
	--outFileNamePrefix $3/$1_ \
	--outReadsUnmapped Fastx
