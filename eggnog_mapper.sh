#!/bin/bash
# Tool: eggNOG-mapper
# Version: v2.1.13
# Purpose: Functional annotation of predicted proteins

emapper.py \
  -i predicted_proteins.faa \
  --itype proteins \
  -m diamond \
  --output emapper_results \
  --cpu 8

