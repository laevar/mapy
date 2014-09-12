# -*- coding: utf-8 -*-
"""
Created on Tue Jan 21 14:20:47 2014

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
cimport numpy as np # we need this for cython-support of numpy
import scipy as sp  # SciPy (signal and image processing library)
from cython.parallel import parallel, prange
from pylab import *   

def cython_mandel(double x,double y):
    cdef double z_real = 0.
    cdef double z_imag = 0.
    cdef int i
    cdef int max_iterations=50
    for i in range(0, max_iterations):
        z_real, z_imag = ( z_real*z_real - z_imag*z_imag + x,2*z_real*z_imag + y )
        if (z_real*z_real + z_imag*z_imag) >= 4:
            return i
    return max_iterations

def mandel_cy(int pointsx, int pointsy):
    cdef np.ndarray[double,ndim=1] x = linspace(-2.1,1.2,pointsx)
    cdef np.ndarray[double,ndim=1] y = linspace(-1.1,1.1,pointsy)
    cdef np.ndarray[double,ndim=2] z = np.zeros([pointsx,pointsy])
    cdef int sizex = len(x)
    cdef int sizey = len(y)
    for i in range(0,sizex):
        for j in range(0,sizey):
            z[i,j] = cython_mandel(x[i],y[j])
    return z

#def mandel_cy_par(int pointsx, int pointsy):
#    cdef np.ndarray[double,ndim=1] x = linspace(-2.1,1.2,pointsx)
#    cdef np.ndarray[double,ndim=1] y = linspace(-1.1,1.1,pointsy)
#    cdef np.ndarray[double,ndim=2] z = np.zeros([pointsx,pointsy])
#    cdef cint size = len(x)
#    with nogil, parallel():
#        for i in prange(0,size, schedule='guided'): 
#            for j in prange(0,size, schedule='guided'):        
#                z[i,j] = cython_mandel(x[i],y[j]) # need to get rif of GIL-neede access!
#    return z

