# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 15:50:40 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
import scipy.interpolate as inter
from pylab import *              # Matplotlib's pylab interface

# zufaellige Koordinaten
x = rand (2000,)
y = rand (2000,)
z = sin (4*pi*x)*cos (2*pi*y)

#fig = figure()
#ax = Axes3D(fig)
#plot(x,y,z,'*-')

xi = linspace(min(x),max(x),40)
yi = linspace(min(y),max(y),40)
[XI,YI] = meshgrid(xi,yi)

# Iteration ueber die verschiedenen Methoden
methods = ['cubic','linear','nearest']
options = {'rstride':1,'cstride':1,'cmap':cm.jet,'linewidth':0}

fig = figure()
for k,meth in enumerate(methods):
    ZI = inter.griddata ((x,y),z,(XI,YI),method=meth)
    ax = fig.add_subplot(3, 2, (k-1)*2+1, projection='3d')
    ax.plot_surface(XI,YI,ZI,vmin=min(z),vmax=max(z),**options)
    title(meth)
    subplot(3,2,(k-1)*2+2)
    CS = contour(XI,YI,ZI)
    plt.clabel(CS, inline=1, fontsize=8)
