# -*- coding: utf-8 -*-
"""
Created on Sun Sep 15 14:19:42 2013

@author: jschulz1
"""

import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import scipy.sparse as sparse # sparse-matrices
import scipy.sparse.linalg as linalg # linalg for sparse
import matplotlib as mpl         # Matplotlib (2D/3D plotting library)
import matplotlib.pyplot as plt  # Matplotlib's pyplot: MATLAB-like syntax
from mpl_toolkits.mplot3d import Axes3D
from pylab import *              # Matplotlib's pylab interface


def poissonmatrix(N,h):
    """ Poisson matrix 2D"""
    # Second-Derivative Matrix
    data = np.ones((3, N))
    data[1,] = -2*data[1,]
    diags = [-1,0,1] 
    D2 = sparse.spdiags(data,diags,N,N)
    locator = -1*sparse.eye(N,N)
    A = (1/h**2)*(sparse.kron(locator,D2) + sparse.kron(D2,locator))    
    #print A.todense()
    return A

def poisson(f,n):
    #matrix fuer Intervall [0,1]x[0,1]
    x,h = linspace(0,1,n+1,retstep=True)
    A = poissonmatrix(n-1,h) 
    
    
    # Erzeuge rechte Seite und Mesh
    mesh = zeros((2,(n-1)**2))
    F = zeros((n-1)**2)
    for i in range(0,(n-1)):
        for j in range(0,(n-1)):
            F[i+(n-1)*j] = f((i+1)/float(n),(j+1)/float(n))
            mesh[:,i+(n-1)*j] = [(i+1)/float(n),(j+1)/float(n)]
    # Loese das lineare System
    loes = solve(A.todense(),F)


    # Ergänze Randbedingungen
    loes = hstack( (loes, zeros(4*n) ) ) 
    mesh = hstack( (mesh, vstack((zeros(n), x[1:])) ) )
    mesh = hstack( (mesh, vstack((ones(n), x[1:])) ) )
    mesh = hstack( (mesh, vstack((x[:-1], ones(n) ) ) ) )
    mesh = hstack( (mesh, vstack((x[:-1], zeros(n) ) ) ) )

    # Plotten
    fig = figure()
    ax = Axes3D(fig)    
    ax.plot(mesh[0,:],mesh[1,:],loes,'*')

    fig = figure()
    ax = Axes3D(fig) 
    [X,Y] = meshgrid(x,x)
    Z = griddata(mesh[0,:], mesh[1,:],loes,X,Y,'linear')
    ax.plot_surface(X,Y,Z,rstride=1,cstride=1,cmap=cm.jet,vmin=min(loes),vmax=max(loes),linewidth=0)
    #fig.savefig('figures/poisson.pdf')

poisson(lambda x,y: x*(y**4),100)

    
        