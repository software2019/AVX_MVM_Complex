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

# module load valgrind
# Launch MPI-based executable

export OMP_NUM_THREADS=1
#echo "Number of Threads = " $OMP_NUM_THREADS
echo "reps,  sec,      size,    MB,        GFlops,        GB/s,        flops/byte"
for ((i=10; i<700; i+=10 )) ; do
    ./avx2_benchmark $i
done


