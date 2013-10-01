# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 17:33:40 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def potenz (x,n):
    """ Berechnet rekursiv die natuerliche Potenz einer Zahl   
    input: 
        x:  Zahl x
        n:  Potenz
    output:
        result:  Ergebnis"""
    if n == 1:
        return x
    if mod(n,2) == 0:
        return potenz(x,n/2)*potenz(x,n/2)
    else:
        return x*potenz(x,(n-1)/2)*potenz(x,(n-1)/2)

x = 4
n = 3
print potenz (x,n)
                 