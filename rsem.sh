#!/bin/bash

#SBATCH -c 8
#SBATCH -t 0-12:00
#SBATCH --mem=32G
#SBATCH -p short

module load gcc/6.2.0 rsem/1.3.0

#Convert to sam for rsem to read in the data
for i in {01..18}; do  convert-sam-for-rsem /home/vrv983/exosome_project/STAR_output/results_${i}Aligned.toTranscriptome.out.bam sample_${i}; echo $i; done

#Calculate the expression data for each sample
for i in {01..18}; do  rsem-calculate-expression -p 8 --alignments --paired-end sample_${i}.bam hg38_rsem_reference sample${i}_rsem; echo $i; done