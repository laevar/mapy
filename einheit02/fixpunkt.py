# -*- coding: utf-8 -*-
"""
Created on Sat Sep  7 15:00:12 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

x = linspace(0,1.5,50)
y = cos(x)
plot(x,x,x,y,linewidth=3)

z = [] # Leere Liste initialisieren
z.append(0.1) # Anfangswert
it_max = 10 # Iterationsschritte 

for i in arange(0,it_max):
    z.append( cos(z[i]) )   
    plot([z[i], z[i]], [z[i], z[i+1]],'r--',linewidth=1)
    plot([z[i], z[i+1]],[z[i+1], z[i+1]],'r--',linewidth=1)