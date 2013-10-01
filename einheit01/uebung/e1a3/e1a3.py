# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 18:58:58 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

j = array(range(2,1001))
print sum(1./(log(j)*j))
#alternativ
print dot((1./log(j)),1./j)


