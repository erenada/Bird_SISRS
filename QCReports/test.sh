#!/bin/bash

file="$1"

for i in 48

do
read line;
    mkdir "${line}"
    cp /data/schwartzlab/Trimmed_SISRS/Birds/fastQC/HTML/"${line}"*html ./"${line}"
done
