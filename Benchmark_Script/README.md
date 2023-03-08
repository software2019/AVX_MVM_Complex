# Benchmark Code Compile and Running Commands    

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






ShidurRahman#9991
A0UuA83*Gye4

https://cloud.sdu.dk
servicedesk@escience.sdu.dk
https://servicedesk.cloud.sdu.dk
https://docs.cloud.sdu.dk/
https://docs.hpc-type3.sdu.dk/

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


# TEST CASES ON HIPPO  

## Commands for HIPPO: For reference, this below compiles all the setup without any error or warning on hippo:    

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
   module load ninja-1.11.1-gcc-8.5.0-wjlni2o 
   module load llvm-15.0.7-gcc-8.5.0-bmulplr 
   module load mpich-4.1-clang-15.0.7-o3jgla4 

 or openmpi-4.1.4-clang-15.0.7-wuqcqaw 

```

Add in the script:
EXECONTROL=\`tail -n1 ${outfile}_${NODES}_${npt}_${lct}_${locall}_${paral}_${ompproc}_0 2> /dev/null | grep -e "Process finalized" | wc -l\`

EXECONTROL=\`tail -n1 ${outfile}_${NODES}_${npt}_${lct}_${locall}_${paral}_${ompproc}_0 2> /dev/null | grep -e "Process finalized" | wc -l\`


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

sbatch --array=1-169 job_1_1.mpi

sbatch --array=1-1000 job_2_2.mpi
sbatch --array=1-943 job_2_3.mpi



omp_thrd,Gauge_group,MPI_size,GLB_T,GLB_X,GLB_Y,GLB_Z,LOC_T,LOC_X,LOC_Y,LOC_Z,algb_kernel,geom_type,RLXD,SITE_FLOP,SITE_BYTE,Dirc_Data_Mov,reps,kb,msec,GFLOPS,BAND,Job_Output



