#!/bin/bash

#SBATCH --job-name=DaskTest
#SBATCH --output=slurm_2018.out
#SBATCH --error=slurm_2018.err
#SBATCH --partition=batch
#SBATCH --qos=normal
#SBATCH --nodes=1

srun python3 run_2018.py
