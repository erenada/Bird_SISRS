#!/bin/bash

# go into the related folder

cd /home/erenada/BirdTree/Alignments/"$1"/"$2"/

TypesOfData=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0 | cut -d "_" -f 4 | cut -d "." -f 1`)
Msp=(`ls /home/erenada/BirdTree/Alignments/AllSites/Gap/m0`)

for i in ${Msp[@]}
do
echo "$i"
done





# for i in ${TypesOfData[*]}
# do
# mkdir /home/erenada/BirdTree/Trees/${TypesOfData[*]}
# done
# #Make folders
#
#
# for i in ${#TypesOfData[@]}
# do
# mkdir /home/erenada/BirdTree/Trees/"$i"
# done
#
# for m in ${#TypesOfData[@]}
# do
# mkdir /home/erenada/BirdTree/Trees/${TypesOfData[@]/${Msp[*]}
# done
#
#
# /home/erenada/BirdTree/Alignments/"$1"/"$2"/$Missing[i]/
#
# for file in $(ls)
#
# iqtree -s "$file" -m GTR+I+R -B 1000 -T 20
#
# mv {alignment} /home/erenada/BirdTree/Alignments/
# cd /home/erenada/BirdTree/Alignments/





# printf  "\nAvailable types of alignments:\n\n$TypesOfData.\n\nEnter which alignment type you want to build trees from: "
#
# read AType
#
# echo "$AType"
# printf  "Gaps included? (y or n):"
#
# read gapoption
#
# if [$gapoption == "y"]; then
#   print "Gaps included"
# else
#   echo "Gaps don't included!"
# fi
