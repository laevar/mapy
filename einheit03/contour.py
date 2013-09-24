# -*- coding: utf-8 -*-
"""
Created on Tue Sep 10 22:01:07 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface

# Erzeugen des Gitters
x = linspace(-2,2,30)
y = linspace(-2,2,30)
[X,Y] = meshgrid(x,y)
# Funktionswerte
Z = exp(-X**2-Y**2)*sin(pi*X*Y)

# verschiedene Darstellungen
fig=figure()
subplot(2,2,1)
contourf(X,Y,Z,10), title('contourf')

subplot(2,2,2)
contour(X,Y,Z,[0,0.2,0.4]), title('special contours')

subplot(2,2,3)
CS = contour(X,Y,Z,[0,0.05,0.1,0.15,0.2])
plt.clabel(CS, inline=1, fontsize=10)
title('contour with labeling')
 
ax = fig.add_subplot(2, 2, 4, projection='3d')
ax.contour(X,Y,Z,10),title('contour3')
#fig.savefig('figures/function_plot_contour_py.pdf', format='PDF')