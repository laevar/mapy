/*-----------------------------------------
 * -       plot_poisson.c
 * -
 * -     plot a vector z on the cartesian grid,
 * -     given by vectors x,y
 * -
 * -     Jochen Schulz           03.09.2009
 * -----------------------------------------------*/


#include <stdio.h>
#include <math.h>
#include <string.h>
#include "engine.h"

#define MAX_ORDER 50

/* Function for plotting data on cartesian grids */
int plot_graph(
double *x,    /* vector of x-values             */
        double *y,    /* vector of y-values             */
        double *z,    /* value at (x[i],y[j]) (row-wise)*/
        int    x_n,   /* size of array x                */
        int    y_n);  /* size of array y                */


/*---------------------------------------------------
 * -             main program                          -
 * -----------------------------------------------------*/
main(int argc, char* argv[]) {
    double x[MAX_ORDER];
    double y[MAX_ORDER];
    double z[MAX_ORDER*MAX_ORDER];
    int x_n, y_n;
    int i, j;
    
    x_n=60;
    y_n=30;
    
    for (i=0; i<x_n; i++) {
        x[i]= (double) i/(x_n-1);
    }
    for (i=0; i<y_n; i++) {
        y[i]= (double) i/(y_n-1);
    }
    for (i=0; i<x_n; i++) {
        for (j=0; j<y_n; j++) {
            *(z+i+j*x_n)=(x[i]-1)*(x[i]+1)*(y[j]-1)*(y[j]+1);
        }
    }
    if (plot_graph(x, y, z, x_n, y_n)==0)
        printf("\n Ungueltiger Aufruf von 'plot_graph' \n");
    return  0;
}

/*---------------------------------------------------
 * -   function 'plot_graph'                           -
 * -----------------------------------------------------*/
int plot_graph(double *x, double *y, double *z, int x_n, int y_n) {
    Engine *ep;
    mxArray *x_m = NULL;
    mxArray *y_m = NULL;
    mxArray *z_m = NULL;
    int i, j;
    
    if ((x_n ==0) || (y_n==0))
        return (int) 0;
    
    
    printf("\n Open MATLAB engine...\n");
    /*---------------------- Start MATLAB engine */
    if (!(ep = engOpen("\0"))) {
        fprintf(stderr, "\nCan't start MATLAB engine\n");
        return EXIT_FAILURE;
    }
    printf("Create MATLAB arrays...\n");
    x_m = mxCreateDoubleMatrix(1, x_n, mxREAL);
    y_m = mxCreateDoubleMatrix(1, y_n, mxREAL);
    z_m = mxCreateDoubleMatrix(x_n, y_n, mxREAL);
    
    
    printf("Copy entries into MATLAB ...\n");
    
    memcpy((void *)mxGetPr(x_m), (void *) x, x_n*sizeof(double));
    memcpy((void *)mxGetPr(y_m), (void *) y, y_n*sizeof(double));
    memcpy((void *)mxGetPr(z_m), (void *) z, x_n*y_n*sizeof(double));
    
    
    
    engPutVariable(ep, "x_m", x_m);
    engPutVariable(ep, "y_m", y_m);
    engPutVariable(ep, "z_m", z_m);
    
    
    printf("Execute MATLAB commands...\n");
    engEvalString(ep, "[Y,X]=meshgrid(y_m,x_m)");
    engEvalString(ep, "surf(X,Y,z_m)");
    engEvalString(ep, "xlabel('x')");
    engEvalString(ep, "ylabel('y')");
    printf("Please press Return \n");
    fgetc(stdin);
    
    
    
    printf("\n Close MATLAB engine...\n");
    engClose(ep);
    
    
    
    return (int) 1;
}
