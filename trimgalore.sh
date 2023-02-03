#!/bin/bash -l

#SBATCH -c 8
#SBATCH -t 0-02:00
#SBATCH --mem=32G
#SBATCH -p short

module load gcc/6.2.0  trimgalore/0.6.6
trim_galore --paired /home/vrv983/exosome_project/Lyden-LP-12950_2022_10_18/LP_18/*_R1_001.fastq.gz /home/vrv983/exosome_project/Lyden-LP-12950_2022_10_18/LP_18/*_R2_001.fastq.gz --output_dir /home/vrv983/exosome_project/trimdata_results 