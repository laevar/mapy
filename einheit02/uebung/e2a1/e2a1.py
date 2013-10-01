# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 19:50:42 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

# Bereits hier ist der numerische Fehler sichtbar, da nicht alle Stellen
# nach der moeglichen Genauigkeit automatisch 0 sind.
x = 1e-15 
print ((1+x)-1)/x
# bei der Addition 1+x wird abgerundet und es kommt wieder 1 heraus. Dann
# ist 1-1 natuerlich 0
x = 1e-16 
print ((1+x)-1)/x