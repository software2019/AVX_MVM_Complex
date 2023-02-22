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

## MACRO ===========================================      

- **{fused,nonfused, newgeo} with MACRO + probempi**    
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --no-checkspinor && ../Make/nj 
```

- **{fused,nonfused, newgeo} with MACRO + noprobempi**    

```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --no-checkspinor && ../Make/nj 

```

## AVX =============================================        

- **{fused,nonfused, newgeo} with AVX + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --avx --no-checkspinor && ../Make/nj 

```


- **{fused,nonfused, newgeo} with AVX + noprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --avx --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --avx --no-checkspinor && ../Make/nj 

```


## VECT ============================================ 
- **{fused,nonfused, newgeo} with VECT + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --vect --no-checkspinor && ../Make/nj 

```


- **{fused,nonfused, newgeo} with VECT + noprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --vect --no-checkspinor && ../Make/nj 

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --vect --no-checkspinor && ../Make/nj 

```



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

sbatch --array=1-33 job_1_1.mpi 
```

