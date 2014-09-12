# -*- coding: utf-8 -*-
"""
Created on Tue Sep 10 21:44:36 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from mayavi import mlab as ml #majavi mlab
from pylab import *              # Matplotlib's pylab interface


# Erzeugen des Gitters
x = linspace(-2,2,60)
y = linspace(-2,2,60)
[X,Y] = meshgrid(x,y)

# Funktionswerte
Z = exp(-X**2-Y**2)*sin(pi*X*Y)

# verschiedenen Darstellungen
fig = figure(figsize=(16,12))
ax = fig.add_subplot(2, 2, 1, projection='3d')
ax.plot_wireframe(X,Y,Z)
title('plot_wireframe')

ax = fig.add_subplot(2, 2, 2, projection='3d')
ax.plot_surface(X,Y,Z,rstride=1,cstride=1,cmap=cm.jet,linewidth=0)
title('plot_surf')

subplot(2, 2, 3)
contour(X,Y,Z,10)
title('contour')

ax = fig.add_subplot(2, 2, 4, projection='3d') 
ax.plot_surface(X,Y,Z,rstride=1,cstride=1,cmap=cm.jet)
ax.contour(X, Y, Z, zdir='z', offset=-0.5)
ax.view_init(20,-26)
title('plot_surface+contour')
#fig.savefig('figures/function_plot3d_py.pdf', format='PDF')

ml.figure(bgcolor=(1,1,1)) # default bgcolor is black
ml.surf(X.T,Y.T,Z)
title('plot_surf (mayavi)')
ml.axes()
ml.colorbar()

#x,y =np.mgrid[-2:2:0.1,-2:2:0.1]
#Z = exp(-x**2-y**2)*sin(pi*x*y)
#ml.surf(x,y,Z)