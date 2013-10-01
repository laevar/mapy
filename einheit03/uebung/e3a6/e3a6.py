# -*- coding: utf-8 -*-
"""
Created on Thu Sep 26 14:15:51 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from mayavi import mlab as ml #majavi mlab
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

# 4d-Funtion (volumetrische Daten) daher z.B. farblich markierte Schnitte durch das Volumen


#sx = [-0.4,0.4]; sy = [-0.6,0.6]; 
#sz = [0.1];

X, Y, Z = np.ogrid[-1:1:30j,-1:1:30j,-1:1:30j]
V = sin(4*pi*X)*sin(pi*Y)*Y**2*(Z**2-1)
ml.pipeline.image_plane_widget(ml.pipeline.scalar_field(V),
                            plane_orientation='z_axes',
                            slice_index=12)
ml.pipeline.image_plane_widget(ml.pipeline.scalar_field(V),
                            plane_orientation='x_axes',
                            slice_index=12)
ml.pipeline.image_plane_widget(ml.pipeline.scalar_field(V),
                            plane_orientation='y_axes',
                            slice_index=10)
ml.pipeline.image_plane_widget(ml.pipeline.scalar_field(V),
                            plane_orientation='y_axes',
                            slice_index=20)
