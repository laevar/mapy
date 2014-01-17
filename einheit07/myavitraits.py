# -*- coding: utf-8 -*-
"""
Created on Fri Jan 17 14:30:02 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from pylab import *              # Matplotlib's pylab interface

from traits.api import HasTraits, Range, Instance, \
                    on_trait_change, Enum
from traitsui.api import View, Item, HGroup
from tvtk.pyface.scene_editor import SceneEditor
from mayavi.tools.mlab_scene_model import \
                    MlabSceneModel
from mayavi.core.ui.mayavi_scene import MayaviScene


class Visualization(HasTraits):
    time = Range(1, 30, 1)
    vt = Enum ('Surf','Mesh','Contour')
    scene      = Instance(MlabSceneModel, ())
    x,y,t =np.mgrid[-1:1:(2.0/50),-1:1:(2.0/50),0:30]
    Z = cos(pi*t**0.5*exp(-x**2-y**2))

    def __init__(self):
        # Do not forget to call the parent's __init__
        HasTraits.__init__(self)
        # Erzeugen des Gitters
        self.plot = self.scene.mlab.surf(self.x[:,:,1],self.y[:,:,1],self.Z[:,:,1])
        
    @on_trait_change('scene.activated')
    def create_plot(self):
        self.scene.mlab.view(45,210)

    @on_trait_change('time,vt')
    def update_plot(self):
        #self.plot.mlab_source.scalars = Z[:,:,t]
        self.plot.remove()
        if self.vt == 'Surf':
            self.plot = self.scene.mlab.surf(self.x[:,:,1],self.y[:,:,1],self.Z[:,:,self.time-1])
        elif self.vt == 'Mesh':
            self.plot = self.scene.mlab.surf(self.x[:,:,1],self.y[:,:,1],self.Z[:,:,self.time-1],representation='wireframe')
        elif self.vt == 'Contour':
            self.plot = self.scene.mlab.contour_surf(self.x[:,:,1],self.y[:,:,1],self.Z[:,:,self.time-1],contours=15)
        else:
            print "Plot-Auswahl fehlgeschlagen"
        


    # the layout of the dialog created
    view = View(Item('scene', editor=SceneEditor(scene_class=MayaviScene),
                    height=250, width=300, show_label=False),
                HGroup(
                        '_', 'time','vt'
                    ),
                )

visualization = Visualization()

visualization.configure_traits()



