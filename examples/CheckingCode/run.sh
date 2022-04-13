#!/bin/bash

#SBATCH -J streams_sbli
#SBATCH -N 10
#SBATCH -n 280
#SBATCH -o test.o
#SBATCH -t 48:00:00
#SBATCH -p engineering_long

cd $SLURM_SUBMIT_DIR/
export LD_LIBRARY_PATH="/gpfs/research/mecfd/SourceCodes/acml/install/gfortran64/lib"

module purge
module load gnu openmpi 
srun ./streams.exe
