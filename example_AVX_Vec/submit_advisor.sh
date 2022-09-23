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
unset MPI_DSM_OFF 
export MPI_DSM_VERBOSE=1 
export MPI_SHARED_VERBOSE=1 
export MPI_MEMMAP_VERBOSE=1 

# to avoid runtime error
export LC_ALL=C; unset LANGUAGE

# Launch MPI-based executable

 export OMP_NUM_THREADS=1
# NOTE: in order to get roofline chart there is a need to run: first survey collection then trip counts and FLOP 
# 1. =========Survey the application==========
advisor -collect=survey --project-dir=./advi_results ./avx_complex_vec_align_load 
#mpirun -n 1 advisor --collect=dependencies --mark-up-list=17 --project-dir=./advi_results ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503

# 2. =========Collect Trip Counts and FLOP Data==========
#advisor --collect=tripcounts --flop --enable-cache-simulation --project-dir=./advi_results  ./avx_complex_vec_align_load 

# 3. ========Collect memory access patterns(MAP) data for loops==========
#advisor --collect=map --enable-cache-simulation --cachesim-mode=cache-misses --project-dir=./advi_results ./avx_complex_vec_align_load 
#Mem Access Patterns of a specific loop: dphi_fused first loop
#mpirun -n 1 advisor --collect=map --mark-up-list=17 --project-dir=./advi_results_Dependence ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503
#Run a Memory Access Patterns analysis. Model cache misses for a default cache configuration
#mpirun -n 1 advisor --collect=map --enable-cache-simulation --cachesim-mode=cache-misses --project-dir=./advi_results_dp_all ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503


# 4. ==========Collect dependencies data for all loops in the app=========
#mpirun -n 1 advisor --collect=dependencies --select="loop-height=2" --project-dir=./advi_results2 ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503
# Generate a survey report txt file to get loop IDs:
#mpirun -n 1 advisor --report=survey --project-dir=./advi_results_all ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503
# Collect dependencies of bulk loop whose ID: 17
#mpirun -n 1 advisor --collect=dependencies --mark-up-list=17 --project-dir=./advi_results_Dependence ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503


 #mpirun -n 1 advisor -c=roofline --project-dir=/home/mrahman/my_result/Advisor -- ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3503
 
 #advisor --collect=roofline --project-dir=./advi  --search-dir src:p=./advi –- myApplication

 #mpirun -n 1 ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_sf_measure_2501_3500
 
 #mpirun -n 1 ./speed_test_diracoperator -i ./speed_test_diracoperator.in -o out_14x14x14x14


 #Command to run jobs on reserved nodes
#sbatch --reservation=mrahman_13 -q test submit_measure_Dphi.mpi
# advisor-gui