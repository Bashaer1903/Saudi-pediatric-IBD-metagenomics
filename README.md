# Saudi Pediatric IBD Shotgun Metagenomics

This repository contains scripts documenting an end-to-end shotgun metagenomic analysis workflow applied to pediatric inflammatory bowel disease (IBD) samples.

## Workflow overview
1. Read quality control and filtering (FastQC, FaQCs)
2. Host (human) read removal (Bowtie2)
3. Taxonomic profiling (Kraken2 with Bracken re-estimation)
4. Metagenomic assembly (metaSPAdes)
5. Assembly quality assessment (MetaQUAST)
6. Gene prediction (Prodigal)
7. Functional annotation (eggNOG-mapper)
8. Antibiotic resistance gene (ARG) profiling (RGI / CARD)
9. Virulence factor (VF) profiling (ABRicate / VFDB)

Quality filtering parameters (e.g., Phred quality score ≥30 and minimum read length ≥120 bp) and alignment thresholds are specified within the individual scripts.

Gene abundances were normalized using standard transcripts per million (TPM), accounting for gene length and sequencing depth.

Taxonomic diversity and machine-learning analyses were performed using species-level relative abundance profiles without additional scaling or transformation.

Antibiotic resistance genes and virulence factors were identified using a gene-centric approach based on the non-redundant gene catalog.

Scripts are provided in a simplified and generalized form to document the analytical steps and ensure reproducibility. High-performance computing (HPC)-specific execution details are intentionally omitted.
