# -*- coding: utf-8 -*-
"""
Created on Tue Sep 30 12:13:55 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from scipy.integrate import ode
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface

def dgl_rhs(t,y):
    return array([[-0.04*y[0]+10**4*y[1]*y[2]], 
                  [0.04*y[0]-10**4*y[1]*y[2] - 3*10**7*y[1]**2 ],
                  [3*10**7*y[1]**2]])


for met in ['dopri5','vode','dop853']:
    y = array([1.0,0.0,0.0])
    r = ode(dgl_rhs)
    r.set_initial_value(y, 0)
    r.set_integrator(met,atol=1e-6,rtol=1e-3)
    tmax = 3
    dt = 0.001
    t=[]
    while r.successful() and r.t < tmax:
        r.integrate(r.t+dt)
        t.append(r.t)
        y = vstack( (y, r.y) )

    fig = figure(figsize=(12,8))
    ax = Axes3D(fig)
    plot(y[:,0],y[:,1],y[:,2])
    title(met)
    xlabel('y(1)'), ylabel('y(2)'), ax.set_zlabel ('y(3)')
show()