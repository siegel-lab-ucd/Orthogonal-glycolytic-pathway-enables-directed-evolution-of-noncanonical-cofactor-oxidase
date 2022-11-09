#!/bin/bash
#SBATCH --job-name=LPNox_NMN
#SBATCH --output=LPNox_NMN.txt 
#SBATCH --array=1-200
#SBATCH -p production 
#SBATCH --time=1000
#SBATCH --mem=2G
Rosetta/main/source/bin/rosetta_scripts.default.linuxgccrelease -database Rosetta/main/database @dock_flags_LP7 -user_tag $SLURM_ARRAY_TASK_ID -out:suffix $SLURM_ARRAY_TASK_ID
