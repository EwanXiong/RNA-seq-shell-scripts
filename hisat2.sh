#!/bin/bash
# Hisat2 mapping sequencing data to reference genome
# Update:2020.7.4
# Sample: loquat 54 fruitfrezzing 
# Author: xyf
# email: xyifan97@163.com

for id in `ls *.clean.fastq`
do
	i=${id%%.*}
	/Date/biosoft/hisat2-2.1.0/hisat2  \
	-x /Date/RNA/fruitfreezing54/trimmomatic/clean_data/loquat_genome/genome \
	-p 96 \
	-1 $i.R1.clean.fastq \
	-2 $i.R2.clean.fastq \
	--dta-cufflinks \
	-S $i.sam \
	
done

