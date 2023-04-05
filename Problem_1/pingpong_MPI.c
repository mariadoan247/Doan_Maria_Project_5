#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <math.h>
#include <time.h>
#include "mpi.h"

int main(int argc, char* argv[]) {
    // Catch console errors
    if (argc != 10)
    {
        printf("USE LIKE THIS: pingpong_MPI n_items time_prob1_MPI.csv\n");
        return EXIT_FAILURE;
    }

    /* Read in command line items */
    int n_items = strtol(argv[1], NULL, 10);
    FILE* outputFile = fopen(argv[2], "w");
    int* ping_array = (int*)malloc(n_items * sizeof(int));

    /* Start up MPI */
    int comm_sz;    /* Number of processes*/
    int my_rank;    /* My process rank */
    MPI_INIT(NULL, NULL);
    
    /* Get the number of processes*/
    MPI_Comm_size(MPI_COMM_WORLD, &comm_sz);

    /* Get my rank among all the processes */
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);

    // Start time
    double starttime;
    starttime = MPI_Wtime();




    // TODO: Create your MPI program.
    if (my_rank == 0) {
    
        // Fill array with incremental values
        for (int i = 0; i < n_items; i++)
            ping_array[i] = i;

        // TODO: if myrank is 0
        


        // End time
        double endtime = MPI_Wtime();
        // TODO: output
    }
    else {

        // TODO: if my rank not 0

    }

    /* Shut down MPI */
    MPI_Finalize();

    return 0;
} /* main */

