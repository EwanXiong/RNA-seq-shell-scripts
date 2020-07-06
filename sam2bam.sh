#!/bin/bash
# sam to bam by samtools
# Update:2020.7.5
# xyf

for id in `ls 3*.sam`
do
	samtools view -b \
	-@ 128 \
	-S $id \
	-o ${id%%.*}.bam
done
	
