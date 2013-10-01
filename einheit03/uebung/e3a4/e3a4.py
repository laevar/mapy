# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 13:53:47 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

x = linspace(0,1,100)

figure()
xlabel('x')
ylabel('y')
grid ('on')
box ('on')
xlim ([-0.1, 1.1])
ylim ([-1.1, 1.1])
plot (x,sin(0.5*pi*x),'b--',linewidth=2)
plot (x,sin(pi*x),'k:',linewidth=2)
plot (x,sin(2*pi*x),'g-',linewidth=2)
plot (x,sin(4*pi*x),'m-.',linewidth=2)
legend (('$\sin(0.5 \pi x)$','$\sin(\pi x)$','$\sin(2 \pi x)$','$\sin(4 \pi x)$'),loc='lower left')
show()