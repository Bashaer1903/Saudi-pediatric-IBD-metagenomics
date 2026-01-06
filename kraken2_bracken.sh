#!/bin/bash
# Tool: Kraken2 + Bracken
# Versions: Kraken2 v2.1.3, Bracken v2.9
# Purpose: Taxonomic profiling using paired and unpaired reads

# Kraken2 classification (paired-end reads)
kraken2 \
  --db kraken_db \
  --paired sample_R1.fastq.gz sample_R2.fastq.gz \
  --report sample.paired.kraken2.report \
  --output sample.paired.kraken2.output

# Kraken2 classification (unpaired reads)
kraken2 \
  --db kraken_db \
  sample_unpaired.fastq.gz \
  --report sample.unpaired.kraken2.report \
  --output sample.unpaired.kraken2.output

# Bracken abundance estimation (paired reads)
bracken -d kraken_db -i sample.paired.kraken2.report -o sample.paired.bracken.S.tsv -l S
bracken -d kraken_db -i sample.paired.kraken2.report -o sample.paired.bracken.G.tsv -l G

# Bracken abundance estimation (unpaired reads)
bracken -d kraken_db -i sample.unpaired.kraken2.report -o sample.unpaired.bracken.S.tsv -l S
bracken -d kraken_db -i sample.unpaired.kraken2.report -o sample.unpaired.bracken.G.tsv -l G

