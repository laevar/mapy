# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 19:05:37 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

A = diag(2*ones((100,)),0) + diag(-1*ones((99,)),-1) + diag(-1*ones((99,)),1)
print det(A)
