# Benchmark Code Compile and Running Commands 

```bash
source /opt/ohpc/pub/oneAPI/setvars.sh 
```

```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --fuse --probempi --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --probempi --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --newgeo --probempi --no-checkspinor



../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --fuse --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --newgeo --no-checkspinor



../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --fuse --probempi --avx --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --probempi --avx --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --newgeo --probempi --avx --no-checkspinor



../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --fuse --avx --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --avx --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --newgeo --avx --no-checkspinor



../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --fuse --probempi --vect --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --probempi --vect --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --newgeo --probempi --vect --no-checkspinor



../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --fuse --vect --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --vect --no-checkspinor
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc <tobedefined> --mpicc <tobedefined>  --mpi --cflags "-Wall -O3 -fopenmp" --ldflags " -fopenmp"  --ndebug --newgeo --vect --no-checkspinor

```


# Modified Commands from the above Templates to be run for MACRO, AVX and VECT cases     


# TEST CASES ON FOSERES   
## ============MACRO ===============        

- **{fused,nonfused, newgeo} with MACRO + probempi**    
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --no-checkspinor && ../Make/nj 
```

- **{fused,nonfused, newgeo} with MACRO + nonprobempi**    

```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --no-checkspinor && ../Make/nj 

```

## =================AVX ====================      

- **{fused,nonfused, newgeo} with AVX + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --avx --no-checkspinor && ../Make/nj 

```

- **{fused,nonfused, newgeo} with AVX + nonprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --avx --no-checkspinor && ../Make/nj 

```


## =================VECT =================
- **{fused,nonfused, newgeo} with VECT + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --vect --no-checkspinor && ../Make/nj 

```


- **{fused,nonfused, newgeo} with VECT + nonprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --vect --no-checkspinor && ../Make/nj 

```


 mv ./n2_fused_macro_nonprobempi/report_nodes2_1.csv ./n2_fused_macro_nonprobempi/n2_fused_macro_nonprobempi.csv
 mv ./n2_fused_macro_probempi/report_nodes2_1.csv ./n2_fused_macro_probempi/n2_fused_macro_probempi.csv
 mv ./n2_newgeo_macro_nonprobempi/report_nodes2_1.csv ./n2_newgeo_macro_nonprobempi/n2_newgeo_macro_nonprobempi.csv
 mv ./n2_newgeo_macro_probempi/report_nodes2_1.csv ./n2_newgeo_macro_probempi/n2_newgeo_macro_probempi.csv
 mv ./n2_nonfused_macro_nonprobempi/report_nodes2_1.csv ./n2_nonfused_macro_nonprobempi/n2_nonfused_macro_nonprobempi.csv
 mv ./n2_nonfused_macro_probempi/report_nodes2_1.csv ./n2_nonfused_macro_probempi/n2_nonfused_macro_probempi.csv






## UCloud and HIPPO Document Links  
- https://cloud.sdu.dk   
- servicedesk@escience.sdu.dk    
- https://servicedesk.cloud.sdu.dk    
- https://docs.cloud.sdu.dk/    
- https://docs.hpc-type3.sdu.dk/    



## Command for running the run_speedtest.sh   
```bash
./run_speedtest.sh 1 # for 1 node
```   

## Comnand for Slrum job array Submissions   
# Submitting Array Jobs  

```bash
sbatch --array=1-1000 job_2_1.mpi
sbatch --array=1-1000 job_2_2.mpi
sbatch --array=1-943 job_2_3.mpi


sbatch --array=1-1000 job_4_1.mpi
sbatch --array=1-1000 job_4_2.mpi
sbatch --array=1-1000 job_4_3.mpi
sbatch --array=1-30 job_4_4.mpi

# 1 node case
sbatch --array=1-33 job_1_1.mpi 

# 2 nodes case
sbatch --array=1-50 job_2_1.mpi 
```

***************************************************************************
***************************************************************************
# TEST CASES ON HIPPO  

## Commands for HIPPO: For reference, this below compiles all the setup without any error or warning on hippo:   

### Steps:   
1. Load all necessary modules 
2. ../Make/nj -t clean    
3. Run the compilation commands
4. ../Make/nj      
5. Submit the jobs   

```bash
## Remember to initiate the spack session with: 
. ~/spack/share/spack/setup-env.sh 

``` 
## and to load the proper modules:  

1) ninja-1.11.1-gcc-8.5.0-wjlni2o 
2) llvm-15.0.7-gcc-8.5.0-bmulplr 
3)  mpich-4.1-clang-15.0.7-o3jgla4 or openmpi-4.1.4-clang-15.0.7-wuqcqaw 

## All the commands below produce a working object:   
## Modified Commands from the above Templates to be run for MACRO, AVX and VECT cases        


## Load the followings before compiling commands   
```bash
   . ~/spack/share/spack/setup-env.sh 
   module load ninja-1.11.1-gcc-8.5.0-wjlni2o 
   module load llvm-15.0.7-gcc-8.5.0-bmulplr 
   module load mpich-4.1-clang-15.0.7-o3jgla4 
   module load likwid-5.2.2-clang-15.0.7-4okwsa2

 or openmpi-4.1.4-clang-15.0.7-wuqcqaw 
  module load hwloc-2.9.0-gcc-8.5.0-tsyvedf
  module load  numactl-2.0.14-clang-15.0.7-w4ji7vg


```

Add in the script:
EXECONTROL=\`tail -n1 ${outfile}_${NODES}_${npt}_${lct}_${locall}_${paral}_${ompproc}_0 2> /dev/null | grep -e "Process finalized" | wc -l\`

EXECONTROL=\`tail -n1 ${outfile}_${NODES}_${npt}_${lct}_${locall}_${paral}_${ompproc}_0 2> /dev/null | grep -e "Process finalized" | wc -l\`

# TEST CASES ON HIPPO 

# ============MACRO ============== 

- **{fused,nonfused, newgeo} with MACRO + probempi** 
```bash 
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --fuse --probempi --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --probempi --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --newgeo --probempi --no-checkspinor --io ; ../Make/nj
```

- **{fused,nonfused, newgeo} with MACRO + nonprobempi**    

```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --fuse --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --newgeo --no-checkspinor --io ; ../Make/nj
```

## ===============AVX =================          

- **{fused,nonfused, newgeo} with AVX + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp -mavx2 -mfma"  --ndebug --fuse --probempi --avx2 --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp  -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp "  --ndebug --probempi --avx2 --no-checkspinor --io ; ../Make/nj
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp  -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp "  --ndebug --newgeo --probempi --avx2 --no-checkspinor --io ; ../Make/nj
```

- **{fused,nonfused, newgeo} with AVX + nonprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp  -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp "  --ndebug --fuse --avx2 --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp  -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp "  --ndebug --avx2 --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp  -mavx2 -mfma" -e --ldflags " -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --newgeo --avx2 --no-checkspinor --io ; ../Make/nj
```

## ================VECT ================ 
 

- **{fused,nonfused, newgeo} with VECT + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --fuse --probempi --vect --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --probempi --vect --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --newgeo --probempi --vect --no-checkspinor --io ; ../Make/nj
```

- **{fused,nonfused, newgeo} with VECT + nonprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --fuse --vect --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --vect --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp"  --ndebug --newgeo --vect --no-checkspinor --io ; ../Make/nj

```
```bash
# 1 Node Case
sbatch --array=1-394 job_1_1.mpi

# 2 Nodes Case
sbatch --array=1-767 job_2_1.mpi

# 4 Nodes Case
sbatch --array=1-1000 job_4_1.mpi
sbatch --array=1-641 job_4_2.mpi

# 8 Nodes Case
sbatch --array=1-1000 job_8_1.mpi    done
sbatch --array=1-1000 job_8_2.mpi    done 
sbatch --array=1-1000 job_8_3.mpi    done
sbatch --array=1-69 job_8_4.mpi
```
#SBATCH -A deicsdul11
#SBATCH --account=deicsdul11
***************************************************************************
***************************************************************************

omp_thrd,Gauge_group,MPI_size,GLB_T,GLB_X,GLB_Y,GLB_Z,LOC_T,LOC_X,LOC_Y,LOC_Z,algb_kernel,geom_type,RLXD,SITE_FLOP,SITE_BYTE,Dirc_Data_Mov,reps,kb,msec,GFLOPS,BAND,Job_Output


[117/135]  CC  /gpfs/ess1/home/srahman/HiRep/build/LibHR/Update/Dphi.o
/gpfs/ess1/home/srahman/HiRep/LibHR/Update/Dphi.c:631:26: warning: unused variable 'thread0' [-Wunused-variable]
            register int thread0 = hr_threadId();
                         ^
/gpfs/ess1/home/srahman/HiRep/LibHR/Update/Dphi.c:800:22: warning: unused variable 'thread0' [-Wunused-variable]
        register int thread0 = hr_threadId();



../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --avx --no-checkspinor && ../Make/nj 

**LIKWID to measure remote mem access**   

```bash
Dear Shidur,it seems to me that you are only not adding  the correct include directory (/home/srahman/spack/./opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/include/)

The command below seems to work to me
# Hippo
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp -march=core-avx2 -mtune=core-avx2" --ldflags "  -latomic  -L /home/srahman/spack/./opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/lib/  -L /home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp -llikwid"    --ndebug --fuse --probempi --avx --no-checkspinor --include "-I /home/srahman/spack/./opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/include/" ; ../Make/nj 

# Updated Command for Compiling
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp -DLIKWID_PERFMON  -march=core-avx2 -mtune=core-avx2" --ldflags "  -latomic  -L /home/srahman/spack/./opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/lib/  -L /home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp -llikwid"    --ndebug --fuse --probempi --avx  --no-checkspinor --include "-I /home/srahman/spack/./opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/include/" 

; ../Make/nj 

export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/srahman/spack/./opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/lib/




#../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp -march=core-avx2 -mtune=core-avx2" --ldflags "  -latomic  -L /home/srahman/spack/./opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/lib/  -L /gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../lib/"    --ndebug --fuse --probempi --avx --no-checkspinor --include "-I /gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../include/" ; ../Make/nj 




# Foseres 
 ../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -latomic  -L /home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/lib -qopenmp"  --likwid   --ndebug --fuse --probempi --avx --no-checkspinor --include "/home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/include/" && ../Make/nj 


 ../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -DLIKWID_PERFMON  -march=core-avx2 -mtune=core-avx2" --ldflags "-L /home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../lib/ -qopenmp -llikwid"   --ndebug --fuse --probempi --avx --no-checkspinor --include " -I /home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../include/ " && ../Make/nj 



 ../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags "-L$LIKWID_LIB -qopenmp"  --likwid   --ndebug --fuse --probempi --avx --no-checkspinor --include "-I$LIKWID_INCLUDE" && ../Make/nj

 export LIKWID_LIB=/opt/ohpc/pub/libs/intel/likwid/4.3.4/bin/../lib/   
 export LIKWID_INCLUDE=/opt/ohpc/pub/libs/intel/likwid/4.3.4/bin/../include/ 

 LIKWID_LIB=/home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../lib/ 
 LIKWID_INCLUDE=/home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../include/ 


[srahman@hippo-fe Benchmarks]$ ../Make/nj speed_test_diracoperator  

# HIPPO
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp -mavx2 -mfma"  --ndebug --fuse --probempi --avx2 --no-checkspinor --io ; ../Make/nj

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp -mavx2 -mfma"  --ndebug --fuse --probempi --avx2 --no-checkspinor --io ; ../Make/nj




# Foseres
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --likwid   --ndebug --fuse --probempi --avx --no-checkspinor && ../Make/nj 

# HIPPO 
$ /bin/bash -c "echo LIKWID_LIB=$(dirname $(which likwid-perfctr))/../lib/"
$ /bin/bash -c "echo LIKWID_INCLUDE=$(dirname $(which likwid-perfctr))/../include/"
[srahman@hippo-fe Benchmarks]$ /bin/bash -c "echo LIKWID_LIB=$(dirname $(which likwid-perfctr))/../lib/"
LIKWID_LIB=/gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../lib/
[srahman@hippo-fe Benchmarks]$ /bin/bash -c "echo LIKWID_INCLUDE=$(dirname $(which likwid-perfctr))/../include/"
LIKWID_INCLUDE=/gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../include/

export LIKWID_LIB=/gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../lib/

export LIKWID_INCLUDE=/gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../include/



# foseres  
LIKWID_LIB=/opt/ohpc/pub/libs/intel/likwid/4.3.4/bin/../lib/
LIKWID_INCLUDE=/opt/ohpc/pub/libs/intel/likwid/4.3.4/bin/../include/

# HIPPO NUMA_TEST  
clang -fopenmp -DLIKWID_PERFMON -L/gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../lib/ -I/gpfs/ess1/home/srahman/spack/opt/spack/linux-almalinux8-zen2/clang-15.0.7/likwid-5.2.2-4okwsa27zj5owsqsxpijnh3oueoqvhfm/bin/../include/ likwid_marker.c -o likwid_marker -llikwid 

# FOSERES NUMA_TEST Practice Folders 
gcc -fopenmp -DLIKWID_PERFMON -L/home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../lib/ -I /home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../include/ likwid_marker.c -o likwid_marker -llikwid 

```


## LIKWID COMMANDS  
```bash
likwid-perfctr -C 16 -g NUMA -m mpirun -np 2 ./speed_test_diracoperator -i test_com_speed.in -o test_out 

mpirun -np 2  likwid-perfctr -C 16 -g NUMA -m ./speed_test_diracoperator -i test_com_speed.in -o test_out 

likwid-perfctr -C 0-3 -g NUMA ./speed_test_diracoperator 

mpirun -n 2 likwid-perfctr -C 16 -g NUMA -m  ./speed_test_diracoperator -i test_com_speed.in  

likwid-perfctr -C 0-3 -g NUMA -m ./speed_test_diracoperator 

mpiexec -np 2  likwid-perfctr -c L:N:0 -g BRANCH -o test_%h_%p.txt  ./speed_test_diracoperator -i test_com_speed.in

mpiexec -np 1  likwid-perfctr -C 0-3 -g NUMA -m ./speed_test_diracoperator -i test_com_speed.in -o test_%h_%p.txt

likwid-perfctr -g NUMA -C M0:0-4@M1:0-4 ./speed_test_diracoperator
likwid-perfctr -C S0:0-1 -g NUMA -m ./speed_test_diracoperator -i test_com_speed.in
mpiexec -np 1  likwid-perfctr -C S0:0-31 -g NUMA -m ./speed_test_diracoperator -i test_com_speed.in
srun -n 1  -c128 likwid-perfctr -C S0:0-127 -g NUMA -m  ./speed_test_diracoperator -i test_com_speed.in 
mpiexec -np 1  -c128 likwid-perfctr -C S0:0-31 -g NUMA -m  ./speed_test_diracoperator -i test_com_speed.in 


mpiexec -np 1  likwid-perfctr -C S0:0-1 -g NUMA -m ./speed_test_diracoperator -i test_com_speed.in

mpiexec -np 1  likwid-perfctr -C 0-1 -g NUMA -m ./speed_test_diracoperator -i test_com_speed.in
mpiexec -np 1 likwid-perfctr -C S0:10 -g ENERGY -m -o test_%h_%r.txt ./speed_test_diracoperator -i test_com_speed.in : -np 1 likwid-perfctr -C S1:10 -g ENERGY -m -o test_%h_%r.txt ./speed_test_diracoperator -i test_com_speed.in

mpiexec -np 2 likwid-perfctr -C S0:10 -g ENERGY -m -o test_%h_%r.txt ./speed_test_diracoperator -i test_com_speed.in 




# check geometry compiling
../../Make/write_mkflags.pl -f ../../Make/MkFlags.ini -n 3 --cc clang --mpicc mpicc  --mpi --cflags "-Wall -O3 -fopenmp -mavx2 -mfma" -e --ldflags "  -latomic -L/home/srahman/spack/opt/spack/linux-almalinux8-zen/gcc-8.5.0/gcc-12.2.0-dplyzyl6twqs6bjthkfv3dcljl4u5hkp/lib64/ -fopenmp -mavx2 -mfma"  --ndebug --fuse --probempi --avx2 --no-checkspinor --io ; ../../Make/nj


_suNf_double_theta_T_multiply(chi, chi2, (*up), psi, psi2);\
 (((chi)).c[0]) = ((((*up))).c[0]) * (((psi)).c[0]);\
 (((chi)).c[0]) += ((((*up))).c[1]) * (((psi)).c[1]);\
 (((chi)).c[0]) += ((((*up))).c[2]) * (((psi)).c[2]);\ 
 (((chi)).c[1]) = ((((*up))).c[3]) * (((psi)).c[0]);\ 
 (((chi)).c[1]) += ((((*up))).c[4]) * (((psi)).c[1]);\ 
 (((chi)).c[1]) += ((((*up))).c[5]) * (((psi)).c[2]);\ 
 (((chi)).c[2]) = ((((*up))).c[6]) * (((psi)).c[0]);\ 
 (((chi)).c[2]) += ((((*up))).c[7]) * (((psi)).c[1]);\ 
 (((chi)).c[2]) += ((((*up))).c[8]) * (((psi)).c[2]);\ 
 (((chi2)).c[0]) = ((((*up))).c[0]) * (((psi2)).c[0]);\ 
 (((chi2)).c[0]) += ((((*up))).c[1]) * (((psi2)).c[1]);\ 
 (((chi2)).c[0]) += ((((*up))).c[2]) * (((psi2)).c[2]);\ 
 (((chi2)).c[1]) = ((((*up))).c[3]) * (((psi2)).c[0]);\ 
 (((chi2)).c[1]) += ((((*up))).c[4]) * (((psi2)).c[1]);\ 
 (((chi2)).c[1]) += ((((*up))).c[5]) * (((psi2)).c[2]);\ 
 (((chi2)).c[2]) = ((((*up))).c[6]) * (((psi2)).c[0]);\ 
 (((chi2)).c[2]) += ((((*up))).c[7]) * (((psi2)).c[1]);\ 
 (((chi2)).c[2]) += ((((*up))).c[8]) * (((psi2)).c[2]);\ 




 #define _suNf_theta_T_multiply(r,u,s) _suNf_multiply((r), (u), (s))
Expands to:

((((*(chi5+j)))).c[0])=(((*((up+j)))).c[0])*(((*((psi+j)))).c[0]); 
((((*(chi5+j)))).c[0])+=(((*((up+j)))).c[1])*(((*((psi+j)))).c[1]); 
((((*(chi5+j)))).c[0])+=(((*((up+j)))).c[2])*(((*((psi+j)))).c[2]); 
((((*(chi5+j)))).c[1])=(((*((up+j)))).c[3])*(((*((psi+j)))).c[0]); 
((((*(chi5+j)))).c[1])+=(((*((up+j)))).c[4])*(((*((psi+j)))).c[1]); 
((((*(chi5+j)))).c[1])+=(((*((up+j)))).c[5])*(((*((psi+j)))).c[2]); 
((((*(chi5+j)))).c[2])=(((*((up+j)))).c[6])*(((*((psi+j)))).c[0]); 
((((*(chi5+j)))).c[2])+=(((*((up+j)))).c[7])*(((*((psi+j)))).c[1]); 
((((*(chi5+j)))).c[2])+=(((*((up+j)))).c[8])*(((*((psi+j)))).c[2])


#define _suNf_theta_T_multiply(r,u,s) _suNf_multiply((r), (u), (s))
Expands to:

((((*(chi6+j)))).c[0])=(((*((up+j)))).c[0])*(((*((psi2+j)))).c[0]); 
((((*(chi6+j)))).c[0])+=(((*((up+j)))).c[1])*(((*((psi2+j)))).c[1]); 
((((*(chi6+j)))).c[0])+=(((*((up+j)))).c[2])*(((*((psi2+j)))).c[2]); 
((((*(chi6+j)))).c[1])=(((*((up+j)))).c[3])*(((*((psi2+j)))).c[0]); 
((((*(chi6+j)))).c[1])+=(((*((up+j)))).c[4])*(((*((psi2+j)))).c[1]); 
((((*(chi6+j)))).c[1])+=(((*((up+j)))).c[5])*(((*((psi2+j)))).c[2]); 
((((*(chi6+j)))).c[2])=(((*((up+j)))).c[6])*(((*((psi2+j)))).c[0]); 
((((*(chi6+j)))).c[2])+=(((*((up+j)))).c[7])*(((*((psi2+j)))).c[1]); 
((((*(chi6+j)))).c[2])+=(((*((up+j)))).c[8])*(((*((psi2+j)))).c[2])

```


