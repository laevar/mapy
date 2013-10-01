# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 14:23:27 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D # simple matlab-like plot-lib
from pylab import *              # Matplotlib's pylab interface

x = linspace(-1,1,40)
[X,Y] = meshgrid (x,x)

# Benutze dictionary fuer die optionen an surf
# diese koennen "ausgepackt" werden mit dem **-operator
# **options ist dasselbe als folgende Argumente zu setzen:
# rstride=1,cstride=1,cmap=cm.jet,linewidth=0
options = {'rstride':1,'cstride':1,'cmap':cm.jet,'linewidth':0}

fig = figure()
ax = fig.add_subplot(2, 2, 1, projection='3d')
ax.plot_surface (X,Y,sin(pi**2*X*Y), **options)

ax = fig.add_subplot(2, 2, 2, projection='3d')
ax.plot_surface (X,Y,(X**2 -1)*(Y**2 -1),**options)

ax = fig.add_subplot(2, 2, 3, projection='3d')
ax.plot_surface (X,Y,sin(pi*X**2), **options)

ax = fig.add_subplot(2, 2, 4, projection='3d')
ax.plot_surface (X,Y,sin(-pi*exp(-X**2 - Y**2) ),**options)
show()