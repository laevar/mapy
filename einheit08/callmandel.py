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
from multiprocessing import Pool
import time

def f(xi):
    zrow = zeros(y.shape[0])
    for j,yj in enumerate(y):
         zrow[j] = mandel.cython_mandel(xi,yj)
    return zrow

pointsx = 3001
pointsy = 2001
x = linspace(-2.1,0.6,pointsx)
y = linspace(-1.1,1.1,pointsy)
z = np.zeros([pointsx,pointsy])

print "** Mandelbrot-set using cython function for the sequences"
print "* normal python loops"
start = time.time()
for i,xi in enumerate(x):
    for j,yj in enumerate(y):        
        z[i,j] = mandel.cython_mandel(xi,yj)
end = time.time()
secs = end - start
print "solution after {} s".format(secs)

print "* parallel execution with multiprocessing"
start = time.time()
p = Pool(2) # start Pool of 2 processes
#sarr = Array('d', (pointsx,pointsy)) # shared array.. awkward, because you have to reshape
zdum = p.map(f,x) # parallel map
z = vstack(zdum)
end = time.time()
secs = end - start
print "solution after {} s".format(secs)


print "* cython-loop"
start = time.time()
z = mandel.mandel_cy(pointsx,pointsy)
end = time.time()
secs = end - start
print "solution after {} s".format(secs)

#zfunc = np.vectorize(mandel.cython_mandel)
#X,Y = meshgrid(x,y)
#z = zfunc(X,Y)
#z[1:-1,1:-1] = mandel.cython_mandel(x[1:-1],y[1:-1])

imshow(z)
show()