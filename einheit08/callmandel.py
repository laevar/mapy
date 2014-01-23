# -*- coding: utf-8 -*-
"""
Created on Tue Jan 21 15:44:53 2014

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from pylab import *   # make many commands be globaly available
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
import mandel # import own mandel-c-module

pointsx = 6010
pointsy = 4010
x = linspace(-2.1,0.6,pointsx)
y = linspace(-1.1,1.1,pointsy)
z = np.zeros([pointsx,pointsy])
# one method
#for i,xi in enumerate(x):
#    for j,yj in enumerate(y):        
#        z[i,j] = mandel.cython_mandel(xi,yj)

# one other. shorter and faster
z = mandel.mandel_cy(pointsx,pointsy)

#zfunc = np.vectorize(mandel.cython_mandel)
#X,Y = meshgrid(x,y)
#z = zfunc(X,Y)
#z[1:-1,1:-1] = mandel.cython_mandel(x[1:-1],y[1:-1])

imshow(z)
show()