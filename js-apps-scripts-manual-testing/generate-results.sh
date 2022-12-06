#!/bin/bash
COUNT=0
for folder in *-judge_tests*/
do
submissionId=${folder:0:8}
cd $folder
result=$(grep 'passing (' "${submissionId}-result.txt")
echo "${submissionId} -> ${result}" >> "../global-results.txt"
cd ../
done;