# -*- coding: utf-8 -*-
"""
Created on Tue Sep 10 09:02:23 2013

@author: jschulz1
"""

#import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
#import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
#mpl.use('pgf')
from pylab import *              # Matplotlib's pylab interface
plt.rc('text', usetex=True)
plt.rc('font', family='serif')

x = linspace(-1,1,100)
p1 = x
p2 = (3./2)*x**2-1./2
p3 = (5./2)*x**3-(3./2)*x
p4 = (35./8)*x**4 -(15./4)*x**2 + 3./8

plot(x,p1,'r:',x,p2,'g--',x,p3,'b-.',x,p4,'m-',linewidth=2)
title(r'Legendre Polynome: $P_n(x) = \frac{1}{2^nn!}\frac{d^n}{dx^n}\left[(x^2-1)^n\right]$ ', fontsize= 20)
xlabel( r'$x$' , fontsize= 20) 
ylabel ( r'$p_n(x)$' , fontsize=20)
text( 0, 0.45 , 'Maximum' )
legend (('n=1' , 'n=2', 'n=3' , 'n=4'), loc='lower right')
grid('on')
box('on') 
xlim( (-1.1 , 1.1) )
#plt.savefig('legendre.pgf')
#plt.savefig('legendre.pdf')
show()

