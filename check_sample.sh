# After indexing, allignment needs to be done
for file in raw_data/*.txt.trimmed_seqs.txt
do

#Remove path and suffix to get clean output files
sample=$(basename "$file" .txt.trimmed_seqs.txt)

echo $sample

#bwa mem -t 20 data/genomes/C_illinoinensisOaxaca_genomic.fna "$file" > results/sam/${sample}.sam

# Convert sam file to bam file
#samtools view -@20 -S -b results/sam/$sample.sam > results/bam/$sample.bam

done 

