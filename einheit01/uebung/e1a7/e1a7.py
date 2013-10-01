# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 19:16:35 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def meanv(x):
    return sum(x)/len(x)

x = array([1., 2, 3, 4]) # Aufpassen, dass floats benutzt werden
print meanv(x)
