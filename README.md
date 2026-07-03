# Project 3: Bioinformatics Sequencing Analysis Pipeline

## Overview

This project demonstrates a complete next-generation sequencing (NGS) analysis workflow using Linux command-line tools. The pipeline includes quality assessment, read trimming, sequence alignment, alignment processing, and quality summarization.

## Objectives

- Assess the quality of raw sequencing reads.
- Trim low-quality bases and adapter sequences.
- Align paired-end reads to a reference genome using BWA.
- Convert, sort, and index alignment files using SAMtools.
- Evaluate alignment statistics.
- Summarize quality control reports using MultiQC.

## Tools Used

- Ubuntu Linux
- FastQC
- Trimmomatic
- BWA
- SAMtools
- MultiQC
- Git & GitHub

## Workflow

### 1. Quality Control
Raw FASTQ files were assessed using FastQC to evaluate sequence quality, GC content, adapter contamination, and sequence duplication levels.

### 2. Read Trimming
Low-quality bases and adapter sequences were removed using Trimmomatic to improve downstream analysis.

### 3. Post-trimming Quality Check
FastQC was run again on the trimmed paired-end reads to confirm improved read quality.

### 4. Reference Genome Indexing
The reference genome was indexed using BWA.

### 5. Sequence Alignment
Trimmed paired-end reads were aligned to the reference genome using BWA-MEM.

### 6. Alignment Processing
The SAM alignment file was converted to BAM format, sorted, and indexed using SAMtools.

### 7. Alignment Statistics
Alignment statistics were generated using `samtools flagstat`.

### 8. MultiQC Report
MultiQC combined all FastQC and SAMtools reports into a single summary report.

## Output Files

- FastQC reports (.html)
- Trimmed paired-end FASTQ files
- Reference genome index files
- SAM alignment file
- Sorted BAM file
- BAM index (.bai)
- SAMtools flagstat report
- MultiQC report
- Pipeline automation script (`runpipeline.sh`)

## Repository Contents

- `runpipeline.sh` – Pipeline automation script
- `reference.fa` – Reference genome
- `multiqc_report.html` – MultiQC summary report
- `SRR2584863_flagstat.txt` – Alignment statistics
- FastQC reports
- MultiQC data directory

## Author

**Popoola Abdulgafar**

Bioinformatics Project 3
