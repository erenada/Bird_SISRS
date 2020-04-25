#!/bin/bash

file="$1"

do
while read line
cp -as /data/schwartzlab/Trimmed_SISRS/Birds/"${line}"*gz /data/schwartzlab/eren/Bird_SISRS/TrimmedReads/
done < "$1"
