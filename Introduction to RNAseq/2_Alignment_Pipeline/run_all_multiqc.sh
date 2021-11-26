#!/bin/bash
pathmultiqcscript="/home/USSR/im383/Documents/teaching/RNA-Seq/scripts/bin/run_multiqc.sh"

pathfastqc="/servers/core-bioinf-data/im383/teaching/RNA-Seq/fastqc/"
pathalign="/servers/core-bioinf-data/im383/teaching/RNA-Seq/aligned/"
pathcounts="/home/USSR/im383/Documents/teaching/RNA-Seq/counts/"
pathout="/home/USSR/im383/Documents/teaching/RNA-Seq/multiqc/"

${pathmultiqcscript} ${pathfastqc} ${pathout} multiqc_fastq
${pathmultiqcscript} ${pathalign} ${pathout} multiqc_aligned
${pathmultiqcscript} ${pathcounts} ${pathout} multiqc_counts

# ${pathmultiqcscript} "${pathfastqc} ${pathalign} ${pathcounts}" ${pathout} multiqc_all
