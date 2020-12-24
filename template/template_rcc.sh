#!/bin/bash
#SBATCH --job-name={{job_name}}
#SBATCH --time={{time}}
#SBATCH --partition={{queue}}
#SBATCH --nodes={{nodes}}
#SBATCH --ntasks-per-node={{ntasks_per_node}}
#SBATCH --cpus-per-task={{cpus_per_task}}
#SBATCH --mem-per-cpu={{mem_per_cpu}}

module purge
module load intelmpi/5.1+intel-16.0 mkl/2017.up4 Anaconda3/5.1.0

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK
NTASKS=$(($SLURM_NTASKS_PER_NODE * $SLURM_JOB_NUM_NODES))

{{cmd}}

