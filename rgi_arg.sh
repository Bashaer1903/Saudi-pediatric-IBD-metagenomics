#!/bin/bash
# Tool: RGI (Resistance Gene Identifier)
# Version: local installation
# Purpose: Identification of antibiotic resistance genes (ARGs) from the non-redundant gene catalog

rgi main \
  --input_sequence catalog.faa \
  --output_file catalog_rgi \
  --input_type protein \
  --local \
  --clean

