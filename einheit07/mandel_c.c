/*******************************************
*     mandel_c.c  - berechnet die Iteratrions-
*                   zahlen fuer die Mandelbrotmenge
*              
*   Gerd Rapin       20.11.2005
*******************************************/

/* Einbinden der Bibliothek */
#include "mex.h"
#include <math.h>

void mandel_c( double result[], double x1[], double y1[], int x1_laenge,
int y1_laenge);

void mexFunction( int nlhs, mxArray *plhs[],
int nrhs, const mxArray *prhs[] )
{
    double *a,*b,*result;
    int acols, bcols;

    acols = mxGetN(prhs[0]);
    bcols = mxGetN(prhs[1]);
    
    printf("\n Erzeuge (%d x %d)-Matrix \n \n",bcols,acols);
    
    /* Erzeuge Matrix fuer das Rueckgabe-Argument. */
    plhs[0] = mxCreateDoubleMatrix(bcols,acols, mxREAL);

    /* Assign pointers to each input and output. */
    a = mxGetPr(prhs[0]);
    b = mxGetPr(prhs[1]);
    result = mxGetPr(plhs[0]);

    /* Aufruf der Routine */
    mandel_c ( result, a, b, acols, bcols);
}

void mandel_c( double result[], double x1[], double y1[], int x1_laenge, 
int y1_laenge)
{
    int MAX_IT = 150;
    int i,j;
    double m,a,b,x,y,t;

    for (i =0;  i< x1_laenge; i++)
    {
    for (j = 0; j< y1_laenge; j++)
    {
        /* ------ Berechnen der Folge */        
        m = 0;
        a = x1[i];
        b = y1[j];
        x = a;
        y = b;
        while (sqrt(x*x+y*y)<2 & m<MAX_IT)
        {
            t = x;
            x = a+x*x-y*y;
            y = b+2*t*y;
            m = m+1;
        }

        result[i*y1_laenge+j] = m;
        }
    }
}
