#!/bin/bash

for id in `cat sample_list.txt`
do

	java -jar /Date/biosoft/Trimmomatic-0.33/trimmomatic-0.33.jar \
		PE \
		-threads 32 \
		$id.R1.fastq $id.R2.fastq \
		$id.R1.clean.fastq $id.R1.unpaired.fastq \
		$id.R2.clean.fastq $id.R2.unpaired.fastq \
		ILLUMINACLIP:/Date/biosoft/Trimmomatic-0.33/adapters/adapters.fa:2:30:10 \
		MINLEN:100 SLIDINGWINDOW:4:15 LEADING:20 AVGQUAL:20 
done




