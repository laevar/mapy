/*******************************************
 *     ggt_2.c  - compute the greatest
 *                common divisor
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
  int     mrows,ncols;
  
  /* Ueberpruefen der Anzahl von Argumenten */
  if(nrhs!=2) {
    mexErrMsgTxt("Genau zwei Input-Variablen erforderlich.");
  } else if(nlhs!=1) {
    mexErrMsgTxt("Falsche Anzahl an Output-argumente");
  }
  
  /* Input Variablen muessen nichtnegative Double sein.*/
  mrows = mxGetM(prhs[0]);
  ncols = mxGetN(prhs[0]);
  if( !mxIsDouble(prhs[0])  ||
      !(mrows==1 && ncols==1) ) {
    mexErrMsgTxt("Erster Eingabeparameter muss ein reelles Skalar sein.");
  }
  
  mrows = mxGetM(prhs[1]);
  ncols = mxGetN(prhs[1]);
  if( !mxIsDouble(prhs[1])  ||
      !(mrows==1 && ncols==1) ) {
    mexErrMsgTxt("Zweiter Eingabeparameter muss ein reelles Skalar sein.");
  } 
 
    
  /* Erzeuge Matrix fuer das Rueckgabe-Argument. */
  plhs[0] = mxCreateDoubleMatrix(1,1, mxREAL);
  
  /* Weise die Zeiger fuer die Output-Argumente zu */
  a = mxGetPr(prhs[0]);
  b = mxGetPr(prhs[1]);
   
  /* Pruefung ob Integer vorliegen */
   if ( (*a - (int) *a) != 0 || (*b - (int) *b) != 0 
       || *a <0 || *b <0 )
       {
      mexErrMsgTxt("Eingabewerte muessen nichtnegative Integer sein.");
  }
  
  
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
