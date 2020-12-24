#!/bin/bash
#COBALT -n {{n}}
#COBALT -t {{t}}
#COBALT -q {{q}}
#COBALT -A {{project_name}}
#COBALT -O {{out_name}}

MPIRANKS_PERNODE=64
MPIRANKS=$((COBALT_PARTSIZE * MPIRANKS_PERNODE))
NTHREADS=1
HT=1

module unload cray-libsci
module load cray-python/3.6.5.3
export CRAYPE_LINK_TYPE=dynamic
export LD_LIBRARY_PATH=$MKLROOT/lib/intel64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/intel/compilers_and_libraries_2018.0.128/linux/compiler/lib/intel64:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/python/3.6.5.3/lib:$LD_LIBRARY_PATH

echo "Running Cobalt Job $COBALT_JOBID."
export OMP_NUM_THREADS=$NTHREADS

{{cmd}}

