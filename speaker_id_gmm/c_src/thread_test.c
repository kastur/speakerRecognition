#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <q6standalone.h>

#define MAX 100
#define PPQ 100   //pixels per quadrant
#define QRANGE 2.0F  // quadrant range
#define DEBUG 1


#if __QDSP6_ARCH__ >= 4
#define COMPUTE_THREADS 2
#else
#define COMPUTE_THREADS 5 /* __QDSP6_ARCH__ <= 3 */
#endif


#define STACK_SIZE 16384

static void compute_fractal (int a);

static double image_buf [4][PPQ][PPQ];
static int Mx;
static unsigned int iterations;
static char stack [COMPUTE_THREADS][STACK_SIZE];

int main ()
{
	//printf("%d\n", __QDSP6_ARCH__);
    int i, j, k;

    // iterations = (argc >1)? strtol (argv [1], NULL, 10): MAX;

    // // Create threads to compute four quadrants of the fractal
    // // each thread is allocated a stack base and parameter

    j = 0;
    while (j < 4)
    {
        for (i = 0; i < COMPUTE_THREADS && j < 4; i++, j++)
            thread_create ((void *) compute_fractal, &stack [i][STACK_SIZE], i + 1, quadrants + j);

        thread_join (((1 << COMPUTE_THREADS) - 1) << 1);
    }

    // // prints the image buffer

    // for (k = 0; k < 4; k++)
    // {
    //     for (j = 0; j < PPQ; j++)
    //     {
    //         for (i = 0; i < PPQ; i++)
    //             putchar (pattern [image_buf [quadrants [k] - 1][i][j]]);
    //         putchar ('\n');
    //     }
    // }
#ifdef DEBUG
    printf("\nThreads done.");
#endif

    return 0;
}

static void compute_fractal (int a)
{
//     int i, j, q = *quadrant - 1;
//     coord_t quadrant_corner [4] = {{0, 0}, {-QRANGE, 0}, {-QRANGE, -QRANGE}, {0, -QRANGE}};
//     coord_t corner = quadrant_corner[q], start;

// #ifdef DEBUG
//     while (1)
//     {
//         if (trylockMutex (&Mx))
//         {
//             printf("\nComputing fractal for point (%f, %f)\nwith %d \
//             iterations.\n", corner.x, corner.y, iterations);
//             break;
//         }
//     }
//     unlockMutex (&Mx);
// #endif

// #ifdef DEBUG
//     lockMutex (&Mx);
//     {
//         printf("\nDone computing fractal for thread %d.", thread_get_tnum());
//     }
//     unlockMutex (&Mx);
// #endif
}
