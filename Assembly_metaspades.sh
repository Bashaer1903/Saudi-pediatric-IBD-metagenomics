#!/bin/bash
# Tool: metaSPAdes
# Version: v3.15.5
# Purpose: Metagenomic assembly from host-depleted reads

metaspades.py \
  --meta \
  -1 sample_R1.nonhost.fastq.gz \
  -2 sample_R2.nonhost.fastq.gz \
  -s sample_unpaired.nonhost.fastq.gz \
  -o metaspades_out

