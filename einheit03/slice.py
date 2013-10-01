# -*- coding: utf-8 -*-
"""
Created on Wed Sep 11 00:15:57 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)

from mayavi import mlab as ml #majavi mlab

import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from pylab import *              # Matplotlib's pylab interface

X, Y, Z = np.ogrid[-2:2:80j,-2:2:80j,-2:2:80j]
V = exp(-X**2-Y**2) * sin(pi*X*Y*Z)
ml.pipeline.image_plane_widget(ml.pipeline.scalar_field(V),
                            plane_orientation='x_axes',
                            slice_index=8)
ml.pipeline.image_plane_widget(ml.pipeline.scalar_field(V),
                            plane_orientation='y_axes',
                            slice_index=5)
ml.pipeline.image_plane_widget(ml.pipeline.scalar_field(V),
                            plane_orientation='y_axes',
                            slice_index=15)
               
ml.figure()
ml.pipeline.volume(ml.pipeline.scalar_field(V))

ml.figure()
ml.contour3d(V)
           