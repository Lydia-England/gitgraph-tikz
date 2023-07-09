#!/bin/bash

# get array containing names of branches
branches=( $(git branch) )
branches=("${branches[@]:1}")
declare -p branches

# get hashes for all commits on each branch
declare -A brhash
length=${#branches[@]}
echo length is $length

<<test
i=0
while [ $i -le ${length-1} ]
do
  echo entered loop
  temp=( $(git log --pretty=format:"%h" ${branches[$i]}) )
  declare -p temp
  templen=${#temp[@]}
  j=0
  while [ $j -le ${templen-1} ]
  do
    brhash[$i,$j]=${temp[${j}]}
    echo ${brhash[$i,$j]}
    ((j++))
  done
  ((i++))
done

echo ALL done
declare -p brhash
test


# run file to create and save
# delete initial log file
# exit message 

