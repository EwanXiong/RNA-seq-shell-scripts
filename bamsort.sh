#!/bin/bash
# bam sort by samtools
# Update:2020.7.5
# xyf

for id in `ls *.bam`
do
	samtools sort \
	-@ 128 \
	$id \
	-o ${id%%.*}_sort.bam
done
