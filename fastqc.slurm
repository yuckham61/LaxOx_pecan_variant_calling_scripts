#!/bin/bash
#SBATCH --job-name=fastqc_run
#SBATCH --partition=batch
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=32G
#SBATCH --time=04:00:00
#SBATCH --output=logs/%x_%j.out
#SBATCH --error=logs/%x_%j.err



#Load the module BioPerl {from the latest update, I think BioPerl is required to run this module}
#Load the fastqc module

module load BioPerl/1.7.2-GCCcore-13.3.0

module load FastQC/0.12.1-Java-11

#Create output directory for the qc results
mkdir -p results/qc_results
mkdir -p logs

##I want to see the qc results of only one file for now
#Using t -20 to make sure 20 CPUs are processed in parallel

fastqc -t 20 -o results/qc_results raw_data/*.txt
