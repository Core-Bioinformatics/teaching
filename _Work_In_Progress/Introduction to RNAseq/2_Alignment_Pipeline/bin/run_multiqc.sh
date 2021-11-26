#!/bin/bash

#usage run_multiqc.sh $in_dir $out_dir $filename
multiqc -o $2 -n $3 $1

