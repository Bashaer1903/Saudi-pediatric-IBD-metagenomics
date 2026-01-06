#!/bin/bash
# Tool: FaQCs
# Purpose: Quality filtering and trimming of paired-end reads

FaQCs \
  -1 R1.fastq.gz \
  -2 R2.fastq.gz \
  -q 30 \
  --avg_q 30 \
  --min_L 120 \
  --kmer_rarefaction \
  -d Output

