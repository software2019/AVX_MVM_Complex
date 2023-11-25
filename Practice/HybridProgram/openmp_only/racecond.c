#include <stdio.h>
#include <omp.h>


int main(int argc, char* argv[])
{
    int omp_rank;
    #ifdef _OPENMP
        omp_rank = omp_get_thread_num();
    #else
        omp_rank = 0;
    #endif
    #pragma omp parallel 
        { 
            // printf("Hello world! by thread %d\n", omp_id);
            printf("Hello world! by thread %d\n", omp_rank);
            
        }

    return 0;
}