# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 19:08:23 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

from scipy.linalg import hilbert

A = hilbert(50)
print dot(A[:,2].T,ones((len(A[:,2]),)))
# alternativ
print sum(A[:,2])
