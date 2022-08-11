#!/bin/bash

#SBATCH -J m_2501_3500          # Job name
#SBATCH --partition test        # Job queue
#SBATCH -o job.%j.out           # Name of stdout output file 
#SBATCH -N 1                    # Total number of nodes requested
#SBATCH -n 1                    # Total number of mpi tasks requested
#SBATCH -t 72:00:00             # Run time (hh:mm:ss) - 1.5 hours

source /opt/ohpc/pub/oneAPI/setvars.sh

echo "cat /proc/sys/kernel/perf_event_paranoid"
cat /proc/sys/kernel/perf_event_paranoid

export I_MPI_DEBUG=5 
export OMP_DISPLAY_AFFINITY=TRUE 
unset MPI_DSM_OFF                 #Turns off nonuniform memory access (NUMA) optimization in the MPI library.
export MPI_DSM_VERBOSE=1 
export MPI_SHARED_VERBOSE=1 
export MPI_MEMMAP_VERBOSE=1 


# Launch MPI-based executable

 export OMP_NUM_THREADS=16
 #echo "Number of Threads = " $OMP_NUM_THREADS

 #icc xandar_openmp.c -o test1 -qopenmp
 #icc avx_complex_vec.c -o test -O3 -march=core-avx2 -mtune=core-avx2 -no-multibyte-chars 
 mpirun -n 1 ./avx_complex_vec


#Without the flag: -no-multibyte-chars, the following error occurs: "Catastrophic error: could not set locale "" to allow processing of multibyte characters"

#Command to run jobs on reserved nodes
#sbatch --reservation=mrahman_13 -q test submit_measure_Dphi.mpi