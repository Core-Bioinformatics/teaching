#!/bin/bash
pathfastqcscript="/home/USSR/im383/Documents/teaching/RNA-Seq/scripts/bin/run_fastqc.sh"
pathfq="/servers/core-bioinf-data/Anna_Cuomo_data/2.fastqs/"
patternfq="21*_6_??_1.fastq.gz"

pathout="/servers/core-bioinf-data/im383/teaching/RNA-Seq/fastqc/"

for exp in `ls ${pathfq}/${patternfq}`
do	
	bn=`basename ${exp} | sed 's/_1.fastq.gz//g'`
	fq1=${bn}_1.fastq.gz
	fq2=${bn}_2.fastq.gz
	
	# Run fastqc on both files
	${pathfastqcscript} ${pathfq}/${fq1} ${pathout} &
	${pathfastqcscript} ${pathfq}/${fq2} ${pathout} &
	# sleep 1
done
