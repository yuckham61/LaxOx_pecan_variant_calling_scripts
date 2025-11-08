#load the bcftools module for stat summary
module load BCFtools/1.21-GCC-13.3.0

#make a directory
mkdir -p results/vcf_stats


#Summary stat of vcf file
for vcf in results/vcf/*.vcf
do

sample=$(basename "$vcf" .vcf)

echo "processing $vcf"
bcftools stats "$vcf" > results/vcf_stats/${sample}_stats.txt

done
