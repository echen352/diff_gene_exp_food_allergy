#!/usr/bin/env bash

LIST=("SRR16976861" "SRR16976862" "SRR16976863" "SRR16976879" "SRR16976880" "SRR16976881" "SRR16976892" "SRR16976894" "SRR16976895")
for x in ${LIST[@]}; do
  sbatch  --time=1:00:00 --wrap="wget https://sra-pub-run-odp.s3.amazonaws.com/sra/${x}/${x}"
done

