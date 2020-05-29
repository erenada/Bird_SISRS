#!/bin/bash
#SBATCH --job-name="Eren"
#SBATCH --time=999:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="literman@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_sCf"
#SBATCH --error="out_sCf"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE


cd $SLURM_SUBMIT_DIR

module load IQ-TREE/1.7-beta16-foss-2018b
