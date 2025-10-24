#!/bin/bash
#SBATCH --job-name=multiqc_run
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=32G
#SBATCH --time=04:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err


#Load the fastqc module
module load MultiQC/1.28-foss-2024a



#Create output directory for the qc results
mkdir -p results/multiqc_results
mkdir -p logs


#Run the multiqc for all the qc results
multiqc -o results/multiqc_results results/qc_results
