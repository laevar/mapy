# -*- coding: utf-8 -*-
"""
Created on Wed Jan 22 20:17:44 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

def ggt(int a,int b):
    while (a != b):
        if (a > b):
            a -= b
        else:
            b -= a
    return a

print ggt(6,9)