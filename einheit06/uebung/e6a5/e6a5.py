# -*- coding: utf-8 -*-
"""
Created on Tue Sep 30 16:12:27 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

# A = e^{-\abs{x-y}}\sin(\abs{x-y})^2}
# A \phi = rhs

#points on domain
n = 10
x,h = linspace (0,1,n,retstep=True)
#difference-matrix
xmat = dot(ones((size(x),1)),array([x]))
rmat = xmat.T-xmat


#Matrix for igl (integral equation)
A = exp(-abs(rmat))*sin(abs(rmat)**2)*h

#rhs
rhs = sin(x)

#density
phi = solve(A,rhs)

#selfconsistancy
norm(dot(A,phi)-rhs)

#alternative calculation
[X,Y] = meshgrid(x,x)
A2 = exp(-abs(X-Y))*sin(abs(X-Y)**2)*h
phi = solve(A2,rhs)

#evaluate
y = linspace(2,4,30)
xmat = dot(ones((size(y),1)),array([x]))
ymat = dot(ones((size(x),1)),array([y]))
rmat = ymat.T-xmat
 
#Matrix for igl
A = exp(-abs(rmat))*sin(abs(rmat)**2)*h
field = dot(A,phi)
 
plot(y,field)
show()