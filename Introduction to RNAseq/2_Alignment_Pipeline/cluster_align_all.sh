#!/bin/bash
nthr=16
pathstarscript="/home/USSR/im383/Documents/teaching/RNA-Seq/scripts/bin/STAR_paired_end.sh"
pathgenome="/opt/bio-shares/bioinf-facility/genomes_collection/HSapiens/GRCh38.p13/star_276a/"
pathfq="/servers/core-bioinf-data/Anna_Cuomo_data/2.fastqs/"
patternfq="21*_6_??_1.fastq.gz"

pathout="/servers/core-bioinf-data/im383/teaching/RNA-Seq/aligned/"
pathlog="/home/USSR/im383/Documents/teaching/RNA-Seq/logs"

for exp in `ls ${pathfq}/${patternfq}`
do	
	bn=`basename ${exp} | sed 's/_1.fastq.gz//g'`
	fq1=${bn}_1.fastq.gz
	fq2=${bn}_2.fastq.gz
	
	# Run STAR on the cluster
	sbatch 	--qos=intr \
	     	-n ${nthr} \
		-J star.${bn} \
		-o ${pathlog}/${bn}.star.out \
		-e ${pathlog}/${bn}.star.err \
		${pathstarscript} ${bn} ${pathfq} ${pathout} ${pathgenome} ${nthr} ${fq1} ${fq2}
	# sleep 1
done
