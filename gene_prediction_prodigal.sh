#!/bin/bash
# Tool: Prodigal
# Version: v2.6.3
# Purpose: Gene prediction from metagenomic assemblies

prodigal \
  -i assembly_contigs.fasta \
  -a predicted_proteins.faa \
  -d predicted_genes.fna \
  -f gff \
  -p meta

