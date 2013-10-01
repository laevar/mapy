# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 19:03:36 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

# hyperharmonische Reihe (euler)
# hat den Grenzwert pi^2/6 
# damit ist der Gesamtgrenzwert: 1/6
j = array(range(1,100000))
grenzwert = 1/pi**2*sum(1./j**2)
error = abs(1./6 - grenzwert)
print grenzwert, error
