# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 14:36:02 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D # simple matlab-like plot-lib
from pylab import *              # Matplotlib's pylab interface

def CreateMovie(path, fname, fps=10):
    """ creates movie with ffmpeg"""
    import os
 
    os.system("rm "+path+"/"+fname+".mp4")
    os.system("ffmpeg -r "+str(fps)+" -b 1800 -i "+path+"/_tmp%05d.png "+path+"/"+fname+".mp4")
    #os.system("rm /tmp/_tmp*.png")

x = linspace (-3,3,50)

fig = figure()
for a in range(1,20):
    f = 1./(x**2 + sqrt(a))
    plot(x,f)
    # Y-Achse festsetzen damit diese nicht springt.
    ylim ([0, 1])
    fname = '/scratch/jschulz1/_tmp{:05d}.png'.format(a) 
    fig.savefig(fname)
    cla()
    
print ("creating movie")
CreateMovie('/scratch/jschulz1/','course', 10)

