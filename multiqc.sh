#!/bin/bash -l

#SBATCH -c 2
#SBATCH -t 0-01:00
#SBATCH -p short

#Load in the required tools to perform multiqc
module load gcc/6.2.0 python/2.7.12 multiqc/1.5

#Command to perform multiqc
multiqc -n multiqc_report /home/vrv983/exosome_project/STAR_output/*Log.final.out