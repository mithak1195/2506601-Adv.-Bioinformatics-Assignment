#!/bin/bash

# Alternative pipeline: replacing FreeBayes with VarScan for variant calling

samtools mpileup -f hg19.fa filtered.bam > alt_pipeline_all.mpileup

varscan mpileup2snp alt_pipeline_all.mpileup \
--min-coverage 5 \
--min-reads2 1 \
--min-var-freq 0.1 \
--p-value 0.1 \
--output-vcf 1 > varscan_variants.vcf

