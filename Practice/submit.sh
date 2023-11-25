#!/bin/bash

#SBATCH -J m_2501_3500          # Job name
#SBATCH --partition test        # Job queue
#SBATCH -o job.%j.out           # Name of stdout output file 
#SBATCH -N 1                    # Total number of nodes requested
#SBATCH -n 1                    # Total number of mpi tasks requested
#SBATCH -t 72:00:00             # Run time (hh:mm:ss) - 1.5 hours

#source /opt/ohpc/pub/oneAPI/setvars.sh

# echo "cat /proc/sys/kernel/perf_event_paranoid"
# cat /proc/sys/kernel/perf_event_paranoid

# export I_MPI_DEBUG=5 
# export OMP_DISPLAY_AFFINITY=TRUE 
# unset MPI_DSM_OFF 
# export MPI_DSM_VERBOSE=1 
# export MPI_SHARED_VERBOSE=1 
# export MPI_MEMMAP_VERBOSE=1 

# Launch MPI-based executable
#NOTE: For Dphi_ timing run 64 MPI + 1 OMP Thrds; For Fused_dphi_ timing run 4 MPI + 16 OMP Thrds

# export OMP_NUM_THREADS=1
# mpirun -n 1 ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3500 

gcc flops.c -o p -O2 -D_GNU_SOURCE  -march=native -mavx -lm -D_GNU_SOURCE
./p
#Command to run jobs on reserved nodes
#sbatch --reservation=mrahman_13 -q test submit_measure_Dphi.mpi