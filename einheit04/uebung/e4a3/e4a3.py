# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 16:29:40 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from scipy.interpolate import interp1d
from scipy.interpolate import UnivariateSpline
from pylab import *              # Matplotlib's pylab interface

cdate,pop = loadtxt('census.csv',delimiter=',',unpack=True)
figure()
#plot data
plot (cdate,pop)

#interpolations Punkte
icdate = linspace(min(cdate),2050,40)

methods = ['nearest','linear','cubic']
for k,meth in enumerate(methods):
    f = interp1d(cdate,pop,kind=meth,bounds_error=False)
    ipop = f(icdate)
    plot(icdate,ipop,color=[1./(k+1), 1./((k+1)*2), 1./((k+2)*3)])
legend(('original','nearest','data','cubic'),loc=4)
xlim([min(cdate), 2050])

# Alle Interpolationen mit interp1d interpolieren aucht tatsaechlich nur; 
# keine Extrapolation. Hier muessen wir uns fuer die abschaetzung etwas anderes 
# einfallen lassen. Nutze UnivariateSpline:
f = UnivariateSpline(cdate, pop)
figure()
plot(icdate,f(icdate))
# Schaetzung. Nutze Indizierung durch Ungleichung
print f(2050)
