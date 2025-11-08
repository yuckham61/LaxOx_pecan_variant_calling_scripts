# After indexing, allignment needs to be done
for file in raw_data/*.txt.trimmed_seqs.txt
do

#Remove path and suffix to get clean output files
sample=$(basename "$file" .txt.trimmed_seqs.txt)

echo $sample

done 

