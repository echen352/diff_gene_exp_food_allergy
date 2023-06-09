#!/usr/bin/env bash

conda activate sratools
INFILE=$1
for x in $(cat ${INFILE})
do
  sbatch  --time=1:00:00 --wrap="fastq-dump --split-files --gzip ${x}"
done
