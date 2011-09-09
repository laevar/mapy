/*********************************************************
 *                       hilbert2.c                      *
 ********************************************************/
 
 #include <stdio.h>
 #include "engine.h"
 
 main(int argc, char* argv[])
 {
     Engine *ep;
     mxArray *x_m = NULL;
     mxArray *d = NULL, *le = NULL;
     double *Dreal;
     double laenge;
     int i;
     
     double n=10;
      
     printf("\n Open MATLAB engine...\n");
     ep = engOpen(NULL);
     
     x_m = mxCreateDoubleMatrix(1, 1, mxREAL);
     *mxGetPr(x_m) = n;
     
     engPutVariable(ep,"x_m",x_m);
     engEvalString(ep,"d=eig(hilb(x_m))");
     engEvalString(ep,"le=length(d)");
     
     d = engGetVariable(ep, "d");
     le = engGetVariable(ep,"le");
     
     Dreal = mxGetPr(d);
     laenge = *mxGetPr(le);
    
     engClose(ep);
     
     for (i=0; i<laenge; i++)
     {
        printf ( "%d. Eigenwert %g \n" , i+1,Dreal[i] );
     }
     
     mxDestroyArray(x_m);
     mxDestroyArray(d);
}
