# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 16:05:05 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
import scipy.interpolate as inter
from pylab import *              # Matplotlib's pylab interface

x,y,z=loadtxt('seamount.csv',delimiter=',',unpack=True)
#print x,y,z
plot(x,y,'.',markersize=10)
fig = figure() 
ax = Axes3D(fig)
plot(x,y,z,'.')

xi = linspace (min(x),max(x),10)
yi = linspace (min(y),max(y),10)
[XI ,YI] = meshgrid (xi ,yi)
ZI = inter.griddata ((x,y),z,(XI,YI),method='linear')
mask = ~isnan(ZI)
fig = figure() 
ax = Axes3D(fig)
ax.plot_surface(XI ,YI ,ZI,rstride=1,cstride=1,cmap=cm.jet,vmin=min(z),vmax=max(z))
#fig.savefig('figures/scattered_data_plot_py.pdf')

xip = linspace (min(x),max(x) ,15)
yip = linspace (min(y),max(y) ,15)
[XIp ,YIp] = meshgrid (xip ,yip)
f = inter.interp2d (XI[mask],YI[mask],ZI[mask],kind='linear') #TODO: geht nicht
#f = inter.RectBivariateSpline(xi,yi,ZI,bbox)
#ZIp = f(XIp,YIp)
#fig = figure() 
#ax = Axes3D(fig)
#ax.plot_surface(XIp ,YIp ,ZIp)
#show()
