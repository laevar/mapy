# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 13:25:12 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface
from scipy.interpolate import interp1d

x = arange(-2,2,0.1)
y = polyval ([1,-1,0,1],x)
plot(x,y,'r--',linewidth=3)

print roots([1,-1,0,1])

[X,Y] = meshgrid (x,x)
Z=abs( polyval ([1,-1,0,1],X+1j*Y))
fig = figure()
ax = Axes3D(fig)
ax.plot_surface(X,Y,Z,rstride=1,cstride=1,cmap=cm.jet,linewidth=0)


x = linspace(-5,5,11)
y = 1/(1+x*x)
figure()
#Plotten der Interpolationspunkte
subplot(2,3,1),
plot(x,y,'ro'), title('Punkte')
#Standardinterpolation
z = arange(-5,5,0.1)
y1 = polyval(polyfit(x,y,len(x)-6),z)
subplot(2,3,2), plot(x,y,'ro',z,y1,'b-.',linewidth=3), title('polynomial')
#linearer Spline
f1=interp1d(x,y,kind='linear')
y2=f1(z)
subplot(2,3,3), plot(x,y,'ro',z,y2,'b-.',linewidth=3), title('Linearer Spline');
#
#Kubischer Spline
f2=interp1d(x,y,kind='quadratic')
y3=f2(z)
subplot(2,3,4), plot(x,y,'ro',z,y3,'b-.',linewidth=3), title('quadratische Interpol.');
#kubische Interpolation
f3=interp1d(x,y,kind='cubic')
y4=f3(z)
subplot(2,3,5), plot(x,y,'ro',z,y3,'b-.',linewidth=3), title('kubische Interpol.');
#konst. Approx.
f4=interp1d(x,y,kind='nearest')
y5=f4(z)
subplot(2,3,6), plot(x,y,'ro',z,y5,'b-.',linewidth=3), title('konst. Approx.');
