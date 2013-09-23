# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 00:39:40 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface


def CreateMovie(path, fname, fps=10):
    """ creates movie with ffmpeg"""
    import os
 
    os.system("rm "+path+"/"+fname+".mp4")
    os.system("ffmpeg -r "+str(fps)+" -b 1800 -i "+path+"/_tmp%05d.png "+path+"/"+fname+".mp4")
    #os.system("rm /tmp/_tmp*.png")

[X,Y] = meshgrid(arange(-1,1,0.05),arange(-1,1,0.05))
fig = figure()
ax = Axes3D(fig)

for j in arange(1,50):
    Z = cos(j**0.5*pi*exp(-X**2-Y**2))
    ax.plot_surface(X,Y,Z,rstride=1,cstride=1,cmap=cm.jet,linewidth=0)
    ax.grid(b=False)
    fname = '/scratch/jschulz1/_tmp{:05d}.png'.format(j) 
    fig.savefig(fname)
    ax.cla()
    
print ("creating movie")
CreateMovie('/scratch/jschulz1/','course', 10)