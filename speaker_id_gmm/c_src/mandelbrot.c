/***************************************************************************
* Copyright (c) Date: Tue Aug 26 16:58:15 CDT 2008 QUALCOMM INCORPORATED 
* All Rights Reserved 
* Modified by QUALCOMM INCORPORATED on Tue Aug 26 16:58:15 CDT 2008 
****************************************************************************/ 


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <hexagon_standalone.h>

#define MAX 100
#define PPQ 100   //pixels per quadrant
#define QRANGE 2.0F  // quadrant range

#if __HEXAGON_ARCH__ >= 4
#define COMPUTE_THREADS 2
#else
#define COMPUTE_THREADS 5 /* __HEXAGON_ARCH__ <= 3 */
#endif


#define STACK_SIZE 16384

typedef enum {
    black = 10, violet = 9, indigo = 8, blue = 7, green = 6,
    yellow = 5, orange = 4, red = 3, white = 1
} color_t;

static const char pattern [] = {' ','\'','^','~','!','-','%','$','#','@','*','*'};

typedef struct {
    float x;
    float y;
} coord_t;

static float absolute (coord_t a);
static void compute_fractal (int * quadrant);

static color_t image_buf [4][PPQ][PPQ];
static int Mx;
static unsigned int iterations;
static char stack [COMPUTE_THREADS][STACK_SIZE] __attribute__ ((__aligned__(8))); ;
static int quadrants [4] = {3, 2, 4, 1};

int main (int argc, char **argv)
{
    int i, j, k;

    iterations = (argc >1)? strtol (argv [1], NULL, 10): MAX;

    // Create threads to compute four quadrants of the fractal
    // each thread is allocated a stack base and parameter

    j = 0;
    while (j < 4)
    {
        for (i = 0; i < COMPUTE_THREADS && j < 4; i++, j++)
            thread_create ((void *) compute_fractal, &stack [i][STACK_SIZE], i + 1, quadrants + j);

        thread_join (((1 << COMPUTE_THREADS) - 1) << 1);
    }

    // prints the image buffer

    for (k = 0; k < 4; k++)
    {
        for (j = 0; j < PPQ; j++)
        {
            for (i = 0; i < PPQ; i++)
                putchar (pattern [image_buf [quadrants [k] - 1][i][j]]);
            putchar ('\n');
        }
    }
#ifdef DEBUG
    printf("\nThreads done.");
#endif

    return (0);
}

static void compute_fractal (int * quadrant)
{
    int i, j, q = *quadrant - 1;
    coord_t quadrant_corner [4] = {{0, 0}, {-QRANGE, 0}, {-QRANGE, -QRANGE}, {0, -QRANGE}};
    coord_t corner = quadrant_corner[q], start;

#ifdef DEBUG
    while (1)
    {
        if (trylockMutex (&Mx))
        {
            printf("\nComputing fractal for point (%f, %f)\nwith %d \
            iterations.\n", corner.x, corner.y, iterations);
            break;
        }
    }
    unlockMutex (&Mx);
#endif
    for (j = 0; j < PPQ; j++)
    {
        for (i = 0; i < PPQ; i++)
        {
            int count = 0;
            coord_t z;
            float xtemp;

            z.x = z.y = 0.0F;
            start.x = corner.x + (i * (QRANGE / PPQ));
            start.y = corner.y + (j * (QRANGE / PPQ));
            while ((count < iterations) && (absolute (z) <= 4.0F))
            {
                xtemp  = (z.x * z.x) - (z.y * z.y) + start.x;
                z.y    = 2.0F * (z.x * z.y) + start.y;
                z.x    = xtemp;
                count++;
            }

            // Fractal coloring
            if (absolute (z) <= 4.0F)
                image_buf [q][i][j] = 10;
            else if (count > (int)(MAX * 0.9F))
                image_buf [q][i][j] = 9;
            else if (count > (int)(MAX * 0.8F))
                image_buf [q][i][j] = 8;
            else if (count > (int)(MAX * 0.6F))
                image_buf [q][i][j] = 7;
            else if (count > (int)(MAX * 0.4F))
                image_buf [q][i][j] = 6;
            else if (count > (int)(MAX * 0.3F))
                image_buf [q][i][j] = 5;
            else if (count > (int)(MAX * 0.1F))
                image_buf [q][i][j] = 4;
            else if (count > (int)(MAX * 0.05F))
                image_buf [q][i][j] = 3;
            else if (count > (int)(MAX * 0.01F))
                image_buf [q][i][j] = 2;
            else if (count > (int)(MAX * 0.001F))
                image_buf [q][i][j] = 1;
            else image_buf [q][i][j] = 0;
        }
    }
#ifdef DEBUG
    lockMutex (&Mx);
    {
        printf("\nDone computing fractal for thread %d.", thread_get_tnum());
    }
    unlockMutex (&Mx);
#endif
}

static float absolute (coord_t a)
{
    return ((a.x * a.x) + (a.y * a.y));
}
