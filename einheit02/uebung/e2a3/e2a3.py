# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 20:00:44 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

# Plot 1
figure()
x = linspace(0,1.5,50)
y = exp(-x)
plot(x,x,x,y,linewidth=3)
axis([-0.1, 1.5, -0.1, 1.1])

# Iterationsschritte 
it_max = 1000

# Anfangswert
z = zeros(it_max)
z[0] = 1.1

for i in range(0,it_max-1):
    z[i+1] = exp(-z[i])
    plot([z[i], z[i]], [z[i], z[i+1]],'r--',linewidth=1)
    plot([z[i], z[i+1]],[z[i+1], z[i+1]],'r--',linewidth=1)
print z[it_max-1]
show()
