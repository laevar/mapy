# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 13:49:11 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

a = 5
x = linspace (-3,3,40)
f = 1./(x**2+a)

figure()
plot (x,f,linewidth=2)
grid('on')
box('on')
title('$f(x) =\\frac{1}{x^2+a}$')
show()
