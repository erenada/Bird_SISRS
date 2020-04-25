#!/bin/bash

file="$1"

while read line
do
cp -as /data/schwartzlab/Trimmed_SISRS/Birds/"${line}"*gz /data/schwartzlab/eren/Bird_SISRS/TrimmedReads/
done < "$1"
