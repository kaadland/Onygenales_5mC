#!/bin/bash
#SBATCH -p batch
#SBATCH --ntasks=20
#SBATCH --nodes=1
#SBATCH --mem 40G
#SBATCH --error=error.%j.txt
#SBATCH --output=logs/RepMod.%j.log
#SBATCH -J RepMod
#SBATCH --time=12:00:00

module load RepeatModeler

RepeatModeler -database cimm_RS -LTRStruct

echo "finished"
