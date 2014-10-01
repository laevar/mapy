# -*- coding: utf-8 -*-
"""
Created on Fri Jan 17 14:30:02 2014

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
from pylab import * # Matplotlib's pylab interface

from traits.api import HasTraits, Range, Instance, on_trait_change, Enum #Trait-types
from traitsui.api import View, Item, Group # traitsUI 
from tvtk.pyface.scene_editor import SceneEditor # scene Editor
from mayavi.tools.mlab_scene_model import MlabSceneModel # Scene Model
from mayavi.core.ui.mayavi_scene import MayaviScene # Scene


#creating class inheriting from the class HasTraits
class Visualization(HasTraits):
    time = Range(1, 30, 1) # Range-slider
    vt = Enum ('Surf','Mesh','Contour') # Enumeration
    scene = Instance(MlabSceneModel, ()) # creating scene-instance
    x,y,t = np.mgrid[-1:1:(2.0/50),-1:1:(2.0/50),1:31] #meshgrid-data together with parameter
    Z = cos(pi*t**0.5*exp(-x**2-y**2)) # evaluation function

    # initialization
    def __init__(self):
        # Do not forget to call the parent's __init__
        HasTraits.__init__(self)
        # create initial plot. self.scene.mlab is a complete mlab-reference
        self.plot = self.scene.mlab.surf(self.x[:,:,0],self.y[:,:,0],self.Z[:,:,0])
        
    # when the scene is activated change the camera viewpoint    
    @on_trait_change('scene.activated')
    def create_plot(self):
        self.scene.mlab.view(45,210)

    # when the user changes one of the 2 traits in the GUI, redraw the image.
    @on_trait_change('time,vt')
    def update_plot(self):
        #self.plot.mlab_source.scalars = Z[:,:,t]
        self.plot.remove() # remove plot (to be able to recreate it)
        if self.vt == 'Surf':
            self.plot = self.scene.mlab.surf(self.x[:,:,0],self.y[:,:,0],self.Z[:,:,self.time-1])
        elif self.vt == 'Mesh':
            self.plot = self.scene.mlab.surf(self.x[:,:,0],self.y[:,:,0],self.Z[:,:,self.time-1],representation='wireframe')
        elif self.vt == 'Contour':
            self.plot = self.scene.mlab.contour_surf(self.x[:,:,0],self.y[:,:,0],self.Z[:,:,self.time-1],contours=15)
        else:
            print "Plot-Auswahl fehlgeschlagen"
        

    # the layout of the dialog created
    view = View(Item('scene', editor=SceneEditor(scene_class=MayaviScene),
                    height=250, width=300, show_label=False), #1st Item
                Group( # 2nd item: horizontal Group for 'time' and 'vt'
                        'time','vt'
                    ,orientation='horizontal',layout='normal'),
                kind='live', title='simple GUI'
                )

# creating new object of the class
visualization = Visualization()
# starting GUI
visualization.configure_traits()



