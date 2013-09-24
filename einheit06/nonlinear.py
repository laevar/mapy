# -*- coding: utf-8 -*-
"""
Created on Sun Sep 15 19:58:43 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from scipy import optimize
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface

x0 = -5  # Startwert
f = lambda x: 2*x - exp(-x)
res,info,i,mesg = optimize.fsolve(f,x0,xtol=1e-5,full_output=True) 
print ("res: {} \nnfev: {} \nfvec: {}".format(res,info['nfev'],info['fvec']) )
x = linspace(0,1,40)
plot(x,f(x),'-',res,0,'+',markersize=15)
