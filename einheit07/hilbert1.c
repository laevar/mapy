/*********************************************************
 *                       hilbert1.c                       *
 ********************************************************/
 
#include <stdio.h>
#include "engine.h"
 
main(int argc, char* argv[])
{
  Engine *ep;
  mxArray *x_m = NULL;
     
  double n = 10;
   
  printf("\n Open MATLAB engine...\n");
  if (!(ep = engOpen("\0"))) {
    fprintf(stderr, "\nCan't start MATLAB engine\n");
    return EXIT_FAILURE;
  }
     
  x_m = mxCreateDoubleMatrix(1, 1, mxREAL);
  *mxGetPr(x_m) = n;
     
  engPutVariable(ep,"x_m",x_m);
  engEvalString(ep,"a=hilb(x_m)");
  engEvalString(ep,"semilogy(eig(a),'*')");
     
  printf("Please press Return \n");
  fgetc(stdin);
  engClose(ep);
}
