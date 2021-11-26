#!/bin/bash

#usage ./STAR_single_end.sh $1_basename $2_path.to.fastqs $3_path.to.output $4_genomeDir $5_runThreadN $6_fastq
STAR 	--runThreadN $5 \
	--genomeDir $4 \
	--readFilesIn $2/$6 \
	--outSAMtype BAM SortedByCoordinate \
	--readFilesCommand zcat \
	--runMode alignReads \
	--outFileNamePrefix $3/$1_ \
	--outReadsUnmapped Fastx
