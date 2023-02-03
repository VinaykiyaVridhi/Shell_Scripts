#!/bin/bash

#SBATCH -c 8
#SBATCH -t 0-04:00
#SBATCH --mem=32G
#SBATCH -p short

#$ -P vrv983
source /etc/bashrc

# This script will run featureCounts for samples stored in specified folder.

# Load module:
module load subread/1.6.2

# GTF annotation file:
GTF=/n/groups/shared_databases/igenome/Homo_sapiens/UCSC/Homo_sapiens/UCSC/hg38/Annotation/Genes/genes.gtf

# For every applicable file in our folder:
for file in /home/vrv983/exosome_project/STAR_output/*.bam

do

# Create a shortened filename:
f=$(basename “$file”)
f=${f:0:10}

# Run the following command:
# Some of the default arguments used:
## minOverlap: 1 overlapping base by default
echo $f
OUT=/home/vrv983/exosome_project/featureCounts_output$f.txt
featureCounts -T 16 -a $GTF -o $OUT $file

# End for loop
done;