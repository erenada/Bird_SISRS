#!/bin/bash

file="$1"

while read line;
do
    mkdir "${line}"
    cp /data/schwartzlab/Trimmed_SISRS/Birds/fastQC/HTML/"${line}"*html ./"${line}"
done
