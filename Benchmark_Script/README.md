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
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --no-checkspinor && ../Make/nj Benchmarks/
```

- **{fused,nonfused, newgeo} with MACRO + noprobempi**    

```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --no-checkspinor && ../Make/nj Benchmarks/

```

## AVX =============================================        

- **{fused,nonfused, newgeo} with AVX + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --avx --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --avx --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --avx --no-checkspinor && ../Make/nj Benchmarks/

```


- **{fused,nonfused, newgeo} with AVX + noprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --avx --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --avx --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --avx --no-checkspinor && ../Make/nj Benchmarks/

```


## VECT ============================================ 
- **{fused,nonfused, newgeo} with VECT + probempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --probempi --vect --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --probempi --vect --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --probempi --vect --no-checkspinor && ../Make/nj Benchmarks/

```


- **{fused,nonfused, newgeo} with VECT + noprobempi** 
```bash
../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --fuse --vect --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --vect --no-checkspinor && ../Make/nj Benchmarks/

../Make/write_mkflags.pl -f ../Make/MkFlags.ini -n 3 -r FUND --cc icc --mpicc mpiicc  --mpi --cflags "-Wall -O3 -qopenmp -march=core-avx2 -mtune=core-avx2" --ldflags " -qopenmp"  --ndebug --newgeo --vect --no-checkspinor && ../Make/nj Benchmarks/

```



