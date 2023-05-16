#!/bin/bash
#SBATCH --partition=
#SBATCH --nodes=1
#SBATCH --ntasks=4
#SBATCH --time=00:30:00
#SBATCH --output=muffin-%j.out


module purge 
ml singularity/3.7.4

singularity exec $CURC_CONTAINER_DIR/cgenie_muffin.sif ./muffin_runner.sh
