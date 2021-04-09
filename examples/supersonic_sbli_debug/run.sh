#!/bin/bash

#SBATCH -J streams_sbli
#SBATCH -N 1
#SBATCH -n 24
#SBATCH -o test.o
#SBATCH -t 48:00:00
#SBATCH -p mecfd18_q

cd $SLURM_SUBMIT_DIR/
export LD_LIBRARY_PATH="/gpfs/research/mecfd/SourceCodes/acml/install/gfortran64/lib"

module purge
module load gnu-openmpi 
mpirun --bind-to core streams.exe >& err
