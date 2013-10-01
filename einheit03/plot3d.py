# -*- coding: utf-8 -*-
"""
Created on Tue Sep 10 20:56:29 2013

@author: jschulz1
"""
import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface

t = arange(0,20*pi,0.1)
x = exp(-t/20)*sin(t)
y = exp(-t/20)*cos(t)
z = t

fig=figure()
ax = Axes3D(fig)
plot(x,y,z,'b-o',linewidth=1)
#grid('on')
ax.set_xlabel('x(t)'),ax.set_ylabel('y(t)'),ax.set_zlabel('z(t)')
title('Beispiel: 3D Kurve mit plot',fontsize=15)
#fig.savefig('figures/plot3d_py.pdf', format='PDF')

# Verschiedene Blickwinkel
fig=figure()
ax = fig.add_subplot(2, 2, 1, projection='3d')
plot(x,y,z,'b')
ax.set_xlabel('x(t)'),ax.set_ylabel('y(t)'),ax.set_zlabel('z(t)')
title('az=-37.5, el=30',fontsize=16)

ax = fig.add_subplot(2, 2, 2, projection='3d')
plot(x,y,z,'b')
ax.view_init(0,0)
ax.set_xlabel('x(t)'),ax.set_ylabel('y(t)'),ax.set_zlabel('z(t)')
title('az=0, el=0',fontsize=16)

ax = fig.add_subplot(2, 2, 3, projection='3d')
plot(x,y,z,'b')
ax.view_init(90,0)
ax.set_xlabel('x(t)'),ax.set_ylabel('y(t)'),ax.set_zlabel('z(t)')
title('az=0, el=90',fontsize=16);

ax = fig.add_subplot(2, 2, 4, projection='3d')
plot(x,y,z,'b')
ax.view_init(0,90)
ax.set_xlabel('x(t)'),ax.set_ylabel('y(t)'),ax.set_zlabel('z(t)')
title('az=90  el=0',fontsize=16)
