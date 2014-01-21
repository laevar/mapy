# -*- coding: utf-8 -*-
"""
Created on Tue Jan 21 14:20:47 2014

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
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
    x = linspace(-2.1,1.2,pointsx)
    y = linspace(-1.1,1.1,pointsy)
    z = np.zeros([pointsx,pointsy])
    for i,xi in enumerate(x):
        for j,yj in enumerate(y):        
            z[i,j] = cython_mandel(xi,yj)
    return z

#import mandel
#dir(mandel)
#mandel.cython_mandel()

