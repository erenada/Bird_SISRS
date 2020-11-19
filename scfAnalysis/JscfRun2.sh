#!/bin/bash
#SBATCH --job-name="scfRun2"
#SBATCH --time=48:00:00  # walltime limit (HH:MM:SS)
#SBATCH --nodes=10  # number of nodes
#SBATCH --ntasks-per-node=20   # processor core(s) per node
#SBATCH --mail-user="erenada@uri.edu"
#SBATCH --mail-type=END,FAIL
#SBATCH --output="out_scfRun2"
#SBATCH --error="err_scfRun2"
#SBATCH --exclusive
# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE

cd /data/schwartzlab/eren/Bird_SISRS/scfAnalysis

module load IQ-TREE/1.7-beta16-foss-2018b

iqtree -t RefTrees/Jarvis_Renamed.nwk -s AllSites/M5_AllUniquelyMapped_AllSites.phylip-relaxed --scf 100 --prefix AllUniquelyMapped -nt 20

iqtree -t RefTrees/Jarvis_Renamed.nwk -s AllSites/M5_CDS_AllSites.phylip-relaxed --scf 100 --prefix CDS -nt 20

iqtree -t RefTrees/Jarvis_Renamed.nwk -s AllSites/M5_five_prime_UTR_AllSites.phylip-relaxed --scf 100 --prefix five -nt 20

iqtree -t RefTrees/Jarvis_Renamed.nwk -s AllSites/M5_gene_AllSites.phylip-relaxed --scf 100 --prefix gene -nt 20

iqtree -t RefTrees/Jarvis_Renamed.nwk -s AllSites/M5_genic_other_AllSites.phylip-relaxed --scf 100 --prefix genic -nt 20

iqtree -t RefTrees/Jarvis_Renamed.nwk -s AllSites/M5_intergenic_AllSites.phylip-relaxed --scf 100 --prefix intergenic -nt 20
