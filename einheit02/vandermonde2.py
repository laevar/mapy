# -*- coding: utf-8 -*-
"""
Created on Sat Sep  7 15:57:05 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def vandermonde2(x):
  n = len(x)
  V = zeros((n,n))
  for i in arange(0,n):
    for j in arange(0,n):
      V[i,j] = x[i]**(n-j-1)
  return V
      
print vandermonde2(array([1,2,3]))
print vander (array([1,2,3]))
