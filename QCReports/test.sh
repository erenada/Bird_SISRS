#!/bin/bash

file="$1"

for i in {1..48}

do
  read line
  mkdir "${line}"
done < "$1"
