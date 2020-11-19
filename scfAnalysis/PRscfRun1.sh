#!/bin/bash
#SBATCH --job-name="PRscfRun1"
#SBATCH --time=48:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=10  # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_PRscfRun1"
#SBATCH --error="err_PRscfRun1"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

cd /data/schwartzlab/eren/Bird_SISRS/scfAnalysis

module load IQ-TREE/1.7-beta16-foss-2018b

iqtree -t RefTrees/PrumTrimmedRenamed.tre -s AllSites/M5_intron_AllSites.phylip-relaxed --scf 100 --prefix intron -nt 20

iqtree -t RefTrees/PrumTrimmedRenamed.tre -s AllSites/M5_lnc_RNA_AllSites.phylip-relaxed --scf 100 --prefix lnc -nt 20

iqtree -t RefTrees/PrumTrimmedRenamed.tre -s AllSites/M5_pseudogene_AllSites.phylip-relaxed --scf 100 --prefix pseudogene -nt 20

iqtree -t RefTrees/PrumTrimmedRenamed.tre -s AllSites/M5_smRNA_AllSites.phylip-relaxed --scf 100 --prefix smRNA -nt 20

iqtree -t RefTrees/PrumTrimmedRenamed.tre -s AllSites/M5_three_prime_UTR_AllSites.phylip-relaxed --scf 100 --prefix three -nt 20
