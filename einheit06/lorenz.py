# -*- coding: utf-8 -*-
"""
Created on Sun Sep 15 19:16:19 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from scipy.integrate import ode
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface

def lorenz_rhs(t,y):
    return array([[10*(y[1]-y[0])], [28*y[0]-y[1]-y[0]*y[2]], [y[0]*y[1]-8*y[2]/3]])


y = array([0,1,0])
r = ode(lorenz_rhs)
r.set_initial_value(y, 0)
r.set_integrator('dopri5',atol=1e-7,rtol=1e-4)
tmax = 30
dt = 0.01
t=[]
while r.successful() and r.t < tmax:
    r.integrate(r.t+dt)
    t.append(r.t)
    y = vstack( (y, r.y) )

fig = figure(figsize=(16,10))
ax = fig.add_subplot(2, 2, 1, projection='3d')
ax.plot(y[:,0],y[:,1],y[:,2])
xlabel('t'), ylabel('y(t)')
subplot(2,2,2),plot(y[:,0],y[:,1]), xlabel('$y_1$'), ylabel('$y_2$');
subplot(2,2,3),plot(y[:,0],y[:,2]), xlabel('$y_1$'), ylabel('$y_3$');
subplot(2,2,4),plot(y[:,1],y[:,2]), xlabel('$y_2$'), ylabel('$y_3$');
#fig.savefig('lorenz.pdf',scale=2)
