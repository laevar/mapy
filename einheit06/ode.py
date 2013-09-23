# -*- coding: utf-8 -*-
"""
Created on Sun Sep 15 17:28:40 2013

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from scipy.integrate import odeint
from scipy.integrate import ode
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D

from pylab import *              # Matplotlib's pylab interface

def rechte_seite1(y,t):
    """rechte_seite1   ODE Beispiel
       z  =rechte_seite1(t,y)"""
    return -y -5*exp(-t)*sin(5*t)


tspan =  linspace(0,3,20)
aw = 1
y = odeint(rechte_seite1,aw,tspan,printmessg=True,full_output=False)
figure()
plot(tspan,y,'r*--',linewidth=3,markersize=15)
xlabel('t'), ylabel('y(t)')

r = ode(lambda t,y: -y -5*exp(-t)*sin(5*t))
r.set_initial_value(aw, 0)
r.set_integrator('vode')
tmax = 3
dt = 0.15
t=[]
y=[]
while r.successful() and r.t < tmax:
    r.integrate(r.t+dt)
    t.append(r.t)
    y.append(r.y)

plot(t,y,'b*--',linewidth=3,markersize=15)
xlabel('t'), ylabel('y(t)')
