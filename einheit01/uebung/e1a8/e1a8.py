# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 19:18:56 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def vanderv(x):
    n = len(x)
    # Replizierte X-Werte
    # x transponieren, dafuer muss es erst zu einem 2d-array werden
    xrep = tile(x[:,None],(1,n)) 
    # Pozenzen
    pmat = tile(array(linspace(0,n-1,n)),(n,1))
    return xrep**pmat


x = array([1, 2, 3, 4])
print vanderv(x)
