/*******************************************
 *    vektor.c  - Berechnet den Durchschnitt und das 
 *                Produkt aller Eintraege eines Vektors
 *
 *   Jochen Schulz       02.09.2009
 *******************************************/

/* Einbinden der Bibliothek */
#include "mex.h"

void ggt( double   result[], double a, double b);

void mexFunction( int nlhs, mxArray *plhs[],
                  int nrhs, const mxArray *prhs[] )
{
  double *vector,*mean,*product;
  
  /* Ueberpruefen der Anzahl von Argumenten */
  if(nrhs!=1) {
    mexErrMsgTxt("Genau eine Input-Variablen erforderlich.");
  } else if(nlhs!=2) {
    mexErrMsgTxt("Genau 2 Output-Argumente benoetigt");
  }
  
     
  /* Erzeuge Matrix fuer das Rueckgabe-Argument. */
  plhs[0] = mxCreateDoubleMatrix(1,1, mxREAL);
  plhs[1] = mxCreateDoubleMatrix(1,1, mxREAL);
  
  /* Weise die Zeiger fuer die Argumente zu */
  vector = mxGetPr(prhs[0]);
  mean = mxGetPr(plhs[0]);
  product = mxGetPr(plhs[1]);
  int vlength = mxGetN(prhs[0]);

  double sum = 0;
  int idx;
  product[0] = 1;
  
  for (idx=0; idx<vlength; idx++)
  {
    sum += vector[idx];
    product[0] *= vector[idx];
  }
  mean[0] = sum/vlength;
}
