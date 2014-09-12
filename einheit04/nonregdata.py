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

x,y,z = loadtxt('seamount.csv',delimiter=',',unpack=True)
plot(x,y,'.',markersize=10)
fig = figure() 
ax = Axes3D(fig)
plot(x,y,z,'.')

#xi = linspace (min(x),max(x),20)
#yi = linspace (min(y),max(y),20)
#[XI ,YI] = meshgrid (xi ,yi)
XI, YI = mgrid[min(x):max(x):20j,min(y):max(y):20j]
ZI = inter.griddata ((x,y),z,(XI,YI),method='linear')
ma = ~isnan(ZI)
ZIm = np.ma.masked_array(ZI, mask=ma) #masked array
fig = figure() 
ax = Axes3D(fig)
ax.plot_surface(XI ,YI ,ZI,rstride=1,cstride=1,cmap=cm.jet,vmin=min(z),vmax=max(z))
#fig.savefig('figures/scattered_data_plot_py.pdf')

xip = linspace (min(x),max(x) ,40)
yip = linspace (min(y),max(y) ,40)
[XIp ,YIp] = meshgrid (xip ,yip)
#TODO: folgendes geht nicht. weder mit masked arrays, noch mit masks noch
# mit nan_to_num.. bug? mit mehr punkten geht es.

f = inter.interp2d (XI,YI,np.nan_to_num(ZI),kind='linear', fill_value=0) 
#f = inter.interp2d (XI[ma],YI[ma],ZI[ma],kind='linear', fill_value=0) 

# das geht allerdings schon, verlangt aber regulaeres Gitter (und maskedarray geht auch nicht)
# besser  waere die NaNs auf min(z) zu setzen (in diesem Fall)
#f = inter.RectBivariateSpline(xi,yi,np.nan_to_num(ZI))

ZIp = f(xip,yip)
fig = figure() 
ax = Axes3D(fig)
ax.plot_surface(XIp ,YIp ,ZIp,rstride=1,cstride=1,cmap=cm.jet,vmin=min(z),vmax=max(z))
show()