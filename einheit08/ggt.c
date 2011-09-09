/*******************************************
 *     ggt.c  - compute the greatest
 *              common divisor
 *
 *   Gerd Rapin       20.11.2005
 *******************************************/

/* Einbinden der Bibliothek */
#include "mex.h"

void ggt( double   result[], double a, double b);

void mexFunction( int nlhs, mxArray *plhs[],
                  int nrhs, const mxArray *prhs[] )
{
  double *a,*b,*result;
  
  /* Erzeuge Matrix fuer das Rueckgabe-Argument. */
  plhs[0] = mxCreateDoubleMatrix(1,1, mxREAL);
  
  /* Die pointer fuer die Variablen  setzen. */
  a = mxGetPr(prhs[0]);
  b = mxGetPr(prhs[1]);
  result = mxGetPr(plhs[0]);
  
  /* Aufruf der ggt Routine */
  ggt ( result, *a, *b );
}

void ggt( double result[], double a, double b)
{
  while (a!=b)
  {
    if (a>b) 
      a = a - b;
    else
      b = b - a;      
  }
  result[0] = a;
}
