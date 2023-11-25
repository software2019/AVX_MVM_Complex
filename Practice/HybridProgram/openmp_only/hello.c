#include <stdio.h>


int main(int argc, char* argv[])
{
    int n_sockets, socket_num, n_procs;
    n_sockets = omp_get_num_places();
    n_procs = omp_get_place_num_procs(16);

    // printf("N_Sockets = %d\n", n_sockets);
    // printf("N_Cores = %d\n", n_procs);

    printf("Hello world! - main\n");

    #pragma omp parallel 
        {
            printf("...worker reporting for duty.\n");
            
        }
    
    printf("Over and out! - main\n");

    return 0;
}