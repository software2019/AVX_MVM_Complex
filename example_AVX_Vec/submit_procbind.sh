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

# specify number of OMP threads
export OMP_NUM_THREADS=16

# enable thread binding and print out info on thread affinity
export OMP_DISPLAY_ENV=true
export OMP_DISPLAY_AFFINITY=true
export OMP_AFFINITY_FORMAT="Thread Affinity: %0.3L %.8n %.15{thread_affinity} %.12H"
export OMP_PROC_BIND=close
#export OMP_PROC_BIND=spread
#export OMP_PROC_BIND=true

#Running------------------------------
#bind each thread to a core
#export OMP_PLACES=threads
export OMP_PLACES=cores
# export OMP_PLACES=sockets

# We can also defined threads to bind to the following cores
#export GOMP_CPU_AFFINITY='0,2,4,6,8,10,12,14,16,18,1,3,5,7,9,11,13,15,17,19'

./avx2_benchmark 100

