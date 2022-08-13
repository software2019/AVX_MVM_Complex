#!/bin/bash

#SBATCH -J m_2501_3600        # Job name
#SBATCH --partition test      # Job queue
#SBATCH -o job.%j.out         # Name of stdout output file 
#SBATCH -N 1                  # Total number of nodes requested
#SBATCH -n 1                  # Total number of mpi tasks requested
#SBATCH -t 72:00:00           # Run time (hh:mm:ss) - 1.5 hours

source /opt/ohpc/pub/oneAPI/setvars.sh

echo "cat /proc/sys/kernel/perf_event_paranoid"
cat /proc/sys/kernel/perf_event_paranoid

export I_MPI_DEBUG=5 
export OMP_DISPLAY_AFFINITY=TRUE 
unset MPI_DSM_OFF 
export MPI_DSM_VERBOSE=1 
export MPI_SHARED_VERBOSE=1 
export MPI_MEMMAP_VERBOSE=1 

# Launch MPI-based executable

#mpirun -n 64 ./mk_sfcorrelators -i T16L16_b2.3_csw1.950000_k0.13450000_id0.sfms.in_2501_3500 -o out_sf_measure_2501_3500

# export OMP_NUM_THREADS=32
# mpirun -n 2 -print-rank-map vtune -collect hotspots -result-dir r_dphi_002hs ./speed_test_diracoperator -i ./speed_test_diracoperator2.in -o out_sf_measure_2501_3500 2

export OMP_NUM_THREADS=1
vtune -collect hotspots -result-dir r002hs ./avx_complex_vec

#export OMP_NUM_THREADS=8
#mpirun -n 8 vtune -collect hotspots -result-dir r_dphi_003hs ./speed_test_diracoperator -i ./speed_test_diracoperator8.in -o out_sf_measure_2501_3500 2

#export OMP_NUM_THREADS=4
#mpirun -n 16 vtune -collect hotspots -result-dir r_dphi_004hs ./speed_test_diracoperator -i ./speed_test_diracoperator16.in -o out_sf_measure_2501_3500 2

#export OMP_NUM_THREADS=2
#mpirun -n 32 vtune -collect hotspots -result-dir r_dphi_004hs ./speed_test_diracoperator -i ./speed_test_diracoperator32.in -o out_sf_measure_2501_3500 2

#export OMP_NUM_THREADS=1
#mpirun -n 16 vtune -collect hotspots -result-dir r_dphi_004hs ./speed_test_diracoperator -i ./speed_test_diracoperator64.in -o out_sf_measure_2501_3500 2

#Command to run jobs on reserved nodes
#sbatch --reservation=mrahman_13 -q test submit_HS_parallel.mpi