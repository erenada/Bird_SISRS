#!/bin/bash

file="$1"

while read line;
do
    mkdir "${line}"
done
