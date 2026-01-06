#!/bin/bash
# Tool: Bowtie2
# Version: v2.5.4
# Purpose: Removal of host (human) reads by alignment to hg38

bowtie2 \
  --score-min L,0,-13 \
  -I 200 \
  -X 400 \
  -L 30 \
  -x hg38_index \
  -1 sample_R1.trimmed.fastq.gz \
  -2 sample_R2.trimmed.fastq.gz \
  -U sample_unpaired.trimmed.fastq.gz \
  --un non_host_reads.fastq \
  --un-conc non_host_reads_paired.fastq \
  --quiet

