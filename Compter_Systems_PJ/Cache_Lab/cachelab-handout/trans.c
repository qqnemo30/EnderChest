/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;
    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    
}

char optimized_trans_1_desc[] = "The 1st optimized version of transpose";
void optimized_trans_1(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;
    int tmp_1, tmp_2, tmp_3, tmp_4;
    int tmp_5, tmp_6, tmp_7, tmp_8;

    for (i = 0; i < N; i += 8) {
        for (j = 0; j < M; j ++) {
            tmp_1 = A[i][j];    tmp_2 = A[i+1][j];
            tmp_3 = A[i+2][j];  tmp_4 = A[i+3][j];
            tmp_5 = A[i+4][j];  tmp_6 = A[i+5][j];
            tmp_7 = A[i+6][j];  tmp_8 = A[i+7][j];

            B[j][i] = tmp_1;    B[j][i+1] = tmp_2;
            B[j][i+2] = tmp_3;  B[j][i+3] = tmp_4;
            B[j][i+4] = tmp_5;  B[j][i+5] = tmp_6;
            B[j][i+6] = tmp_7;  B[j][i+7] = tmp_8;
        }
    }
}

char optimized_trans_2_desc[] = "The 2nd optimized version of transpose";
void optimized_trans_2(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;
    int tmp_1, tmp_2, tmp_3, tmp_4;

    for (i = 0; i < N; i += 4) {
        for (j = 0; j < M; j ++) {
            tmp_1 = A[i][j];    tmp_2 = A[i+1][j];
            tmp_3 = A[i+2][j];  tmp_4 = A[i+3][j];

            B[j][i] = tmp_1;    B[j][i+1] = tmp_2;
            B[j][i+2] = tmp_3;  B[j][i+3] = tmp_4;
        }
    }
}

char optimized_trans_3_desc[] = "The 5th optimized version of transpose";
void optimized_trans_3(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, k;
    int tmp_1, tmp_2, tmp_3, tmp_4;
    int tmp_5, tmp_6, tmp_7, tmp_8;
    int tmp_9, tmp_10, tmp_11, tmp_12;

    for (i = 0; i < 64; i += 8) {
        for (j = 0; j < 64; j += 8) {
            for (k = 0; k < 4; k++) {
                tmp_1 = A[i+k][j];      tmp_2 = A[i+k][j+1];
                tmp_3 = A[i+k][j+2];    tmp_4 = A[i+k][j+3];
                tmp_5 = A[i+k][j+4];    tmp_6 = A[i+k][j+5];
                tmp_7 = A[i+k][j+6];    tmp_8 = A[i+k][j+7];

                B[j][i+k] = tmp_1;      B[j+1][i+k] = tmp_2;
                B[j+2][i+k] = tmp_3;    B[j+3][i+k] = tmp_4;
                B[j][i+k+4] = tmp_5;    B[j+1][i+k+4] = tmp_6;
                B[j+2][i+k+4] = tmp_7;  B[j+3][i+k+4] = tmp_8;
            }
            for (k = 0; k < 4; k++) {
                tmp_1 = A[i+4][j+k];    tmp_2 = A[i+5][j+k];
                tmp_3 = A[i+6][j+k];    tmp_4 = A[i+7][j+k];

                tmp_5 = A[i+4][j+k+4];  tmp_6 = A[i+5][j+k+4];
                tmp_7 = A[i+6][j+k+4];  tmp_8 = A[i+7][j+k+4];
                
                tmp_9 = B[j+k][i+4];    tmp_10 = B[j+k][i+5];
                tmp_11 = B[j+k][i+6];   tmp_12 = B[j+k][i+7];
                
                B[j+k][i+4] = tmp_1;    B[j+k][i+5] = tmp_2;
                B[j+k][i+6] = tmp_3;    B[j+k][i+7] = tmp_4;

                B[j+4+k][i] = tmp_9;    B[j+4+k][i+1] = tmp_10;
                B[j+4+k][i+2] = tmp_11; B[j+4+k][i+3] = tmp_12;

                B[j+4+k][i+4] = tmp_5;  B[j+4+k][i+5] = tmp_6;
                B[j+4+k][i+6] = tmp_7;  B[j+4+k][i+7] = tmp_8;
            }
        }
    }
}

char optimized_trans_4_desc[] = "The 4th optimized version of transpose";
void optimized_trans_4(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;
    int tmp_1, tmp_2, tmp_3, tmp_4;
    int tmp_5, tmp_6, tmp_7, tmp_8;

    for (i = 0; i < N - 8; i += 8) {
        for (j = 0; j < M; j ++) {
            tmp_1 = A[i][j];    tmp_2 = A[i+1][j];
            tmp_3 = A[i+2][j];  tmp_4 = A[i+3][j];
            tmp_5 = A[i+4][j];  tmp_6 = A[i+5][j];
            tmp_7 = A[i+6][j];  tmp_8 = A[i+7][j];

            B[j][i] = tmp_1;    B[j][i+1] = tmp_2;
            B[j][i+2] = tmp_3;  B[j][i+3] = tmp_4;
            B[j][i+4] = tmp_5;  B[j][i+5] = tmp_6;
            B[j][i+6] = tmp_7;  B[j][i+7] = tmp_8;
        }
    }
    for (; i < N; i++) {
        for (j = 0; j < M; j ++) {
            tmp_1 = A[i][j];

            B[j][i] = tmp_1;
        }
    }
}

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if ((M == 32) && (N == 32))
        return optimized_trans_1(M, N, A, B);
    if ((M == 64) && (N == 64))
        return optimized_trans_3(M, N, A, B);
    if ((M == 61) && (N == 67))
        return optimized_trans_4(M, N, A, B);
}


/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

