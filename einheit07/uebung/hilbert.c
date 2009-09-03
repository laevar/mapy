/*-----------------------------------------
 * -       hilbert.c
 * -
 * -     plot a vector z on the cartesian grid,
 * -     given by vectors x,y
 * -
 * -     Jochen Schulz           03.09.2009
 * -----------------------------------------------*/


#include <stdio.h>
#include <string.h>
#include "engine.h"

main(int argc, char* argv[])
{
     Engine *ep;
     mxArray *Mn = NULL;
     mxArray *Mx = NULL;
     double *x;
     int i;

     printf("\n Open MATLAB engine...\n");
     ep = engOpen(NULL);

     double n = 20;
     Mn = mxCreateDoubleMatrix(1, 1, mxREAL);
     *mxGetPr(Mn) = n;

     engPutVariable(ep,"Mn",Mn);
     engEvalString(ep,"H = hilb(Mn)");
     engEvalString(ep,"b = H*ones(Mn,1)");
     engEvalString(ep,"x = H\\b");

     Mx = engGetVariable(ep, "x");
     x = mxGetPr(Mx);

     engClose(ep);

     for (i=0; i<n; i++)
     {
        printf ( "%f\n" , x[i] );
     }

     mxDestroyArray(Mn);
     mxDestroyArray(Mx);
}
