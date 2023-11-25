/* 
* . ~/spack/share/spack/setup-env.sh 
*  module load likwid-5.2.1-gcc-12.1.0-asif6ex 
* 
* Compiling 

gcc -fopenmp -DLIKWID_PERFMON -L/home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../lib/ -I /home/mrahman/spack/opt/spack/linux-centos7-broadwell/gcc-12.1.0/likwid-5.2.1-asif6exc7yifachljnt3fstxp4makpmh/bin/../include/ likwid_marker.c -o likwid_marker -llikwid 

* Running 

likwid-perfctr -C S0:0-7 -g L3 -m ./likwid_marker

*/


#include <stdlib.h>
#include <stdio.h>
#include <omp.h>
// This block enables compilation of the code with and without LIKWID in place
#ifdef LIKWID_PERFMON
#include <likwid-marker.h>
#else
#define LIKWID_MARKER_INIT
#define LIKWID_MARKER_THREADINIT
#define LIKWID_MARKER_SWITCH
#define LIKWID_MARKER_REGISTER(regionTag)
#define LIKWID_MARKER_START(regionTag)
#define LIKWID_MARKER_STOP(regionTag)
#define LIKWID_MARKER_CLOSE
#define LIKWID_MARKER_GET(regionTag, nevents, events, time, count)
#endif

#define N 10000

int main(int argc, char* argv[])
{
    int i;
    double data[N];
    LIKWID_MARKER_INIT;
#pragma omp parallel
{
    LIKWID_MARKER_REGISTER("foo");
}
#pragma omp parallel
{
    LIKWID_MARKER_START("foo");
    #pragma omp for
    for(i = 0; i < N; i++)
    {
        data[i] = omp_get_thread_num();
    }
    LIKWID_MARKER_STOP("foo");
    printf("parallel region\n");
}
    printf("PASS\n");

    LIKWID_MARKER_CLOSE;
    printf("PASS2\n");
    
    return 0;
}