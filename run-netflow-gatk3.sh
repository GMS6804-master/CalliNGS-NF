#!/bin/bash
#SBATCH --job-name=nextflow
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=djlemas@ufl.edu
#SBATCH --ntasks=1
#SBATCH --mem=12gb
#SBATCH --time=1:00:00
#SBATCH --output=nextflow_%j.log
pwd; hostname; date

# load modules
module load singularity
module load nextflow
module load gatk/3.8.0

#Run nextflow script 
nextflow run main_gatk3.nf -with-singularity /home/djlemas/singularity/callings-nf-gatk4.simg --gatk /apps/gatk/3.8.0/GenomeAnalysisTK.jar

date