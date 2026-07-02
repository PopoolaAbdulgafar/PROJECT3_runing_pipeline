#!/bin/bash

# Run FastQC
fastqc SRR2584863_1_paired.fastq SRR2584863_2_paired.fastq

# Align reads
bwa mem reference.fa SRR2584863_1_paired.fastq SRR2584863_2_paired.fastq > SRR2584863.sam

# Convert SAM to BAM
samtools view -b SRR2584863.sam > SRR2584863.bam

# Sort BAM
samtools sort SRR2584863.bam -o SRR2584863_sorted.bam

# Index BAM
samtools index SRR2584863_sorted.bam

# Alignment statistics
samtools flagstat SRR2584863_sorted.bam > SRR2584863_flagstat.txt

echo "Pipeline completed successfully!"
