#!/bin/bash
#SBATCH -p batch
#SBATCH --ntasks=8
#SBATCH --nodes=1
#SBATCH --mem 25G
#SBATCH --error=error.%j.txt
#SBATCH --output=logs/mcclintock.%j.log
#SBATCH -J mcclintock
#SBATCH --time=04:00:00

module load mcclintock


mcclintock.py -r ../Cocci_5mC/genome/FungiDB-52_CimmitisRS_Genome.fasta -c mcclintock_testData.fa -1 ../UGA/Coccidioides_immitis_RS.combined.fastq.gz


echo finished
