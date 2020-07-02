#!/bin/bash
# to get filename in a txt

path=$1
files=$(ls $path)
for filename in $files
do
	echo $filename >> filename.txt
done

