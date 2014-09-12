# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 20:08:53 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def myhilbert (n):
    """für n in N die Hilbert-Matrix H = (h_ij)^n_i,j=1 mit h_ij =1/(i+j−1)
    berechnet."""

    # Mit Schleifen
    H = zeros((n,n))
    for i in range(0,n):
        for j in range(0,n):
            H[i,j] = 1./(i+j+1)

    #alternativ mit Matrizen
    imat = tile(range(0,n),(n,1))
    jmat = tile(array(range(1,n+1))[:,None],(1,n))
    #alternative konstruktion der range
    jmat = tile(mgrid[1:n+1:1,].T,(1,n))
    return 1./(imat+jmat)


# Berechne hilber-Matrix und pruefe deren Korrektheit
my4 = myhilbert(4)
my12 = myhilbert(12)
print inv(my4)
print inv(my12)
print cond(my12)