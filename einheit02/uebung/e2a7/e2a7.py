# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 20:24:47 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def fibonacci(TOL):
    """ berechnet die Die Fibonacci-Folge f und deren term-verhaeltnis 
    g_k = f_(k+1)/f_k
    Stoppt die Iteration bei |g_k − g_(k+1) | <= TOL 
    input:
        TOL: Tolerance
    output:
        gk : g_k
        k : index k"""

    f = []
    f.append (1.)
    f.append (1.)
    f.append (f[1] + f[0])

    g = []
    g.append (f[1]/f[0])
    g.append (f[2]/f[1])

    k = 0
    while (abs(g[k] - g[k+1]) > TOL):
        f.append (f[k+2] + f[k+1])
        g.append (f[k+3]/f[k+2])
        k += 1

    return g[k],k


print fibonacci(1e-3)
print fibonacci(1e-4)