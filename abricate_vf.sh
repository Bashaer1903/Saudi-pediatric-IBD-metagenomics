#!/bin/bash
# Tool: ABRicate
# Version: v1.0.1
# Purpose: Identification of virulence factors (VFs) from the non-redundant gene catalog

abricate \
  --db vfdb \
  catalog.fna > vfdb_on_catalog.tab

