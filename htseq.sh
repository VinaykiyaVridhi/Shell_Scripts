
  module load gcc/6.2.0 htseq/0.12.4
  for i in {01..18}; do htseq-count -f bam -r pos -s yes -i ID -t sORF /home/vrv983/exosome_project/STAR_output/results_${i}Aligned.sortedByCoord.out.bam /n/groups/shared_databases/igenome/Homo_sapiens/UCSC/Homo_sapiens/UCSC/hg38/Annotation/Genes/genes.gtf > /home/vrv983/exosome_project/HTseq_results/counts_${i}.txt; echo $i; done