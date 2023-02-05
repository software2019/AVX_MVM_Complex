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
unset MPI_DSM_OFF                 #Turns off nonuniform memory access (NUMA) optimization in the MPI library.
export MPI_DSM_VERBOSE=1 
export MPI_SHARED_VERBOSE=1 
export MPI_MEMMAP_VERBOSE=1 
# export OMP_DISPLAY_ENV=true
# export OMP_DISPLAY_AFFINITY=true
# export OMP_AFFINITY_FORMAT="Thread Affinity: %0.3L %.8n %.15{thread_affinity} %.12H"
export OMP_PROC_BIND=close # Specified omp threads are binded to soc1
#export OMP_PROC_BIND=spread # Specified omp threads are divided into both soc1 and soc2  
export OMP_PLACES=cores

for ((i=2; i<=16; i*=2 )) ; do
    export OMP_NUM_THREADS=$i
    echo "Number of Threads = " $OMP_NUM_THREADS
    echo "reps, overall sec, actual sec, size, MB, GFlops, GB/s, flops/byte"

    for ((j=32; j<=3328; j+=32 )) ; do
        ./avx2_single_benchmark $j
    done

    for ((j=3328; j<=332800; j+=3328 )) ; do
        ./avx2_single_benchmark $j
    done
done
