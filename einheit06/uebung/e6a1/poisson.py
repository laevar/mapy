import numpy as np  # NumPy (multidimensional arrays, linear algebra, ...)
import scipy as sp  # SciPy (signal and image processing library)
import scipy.sparse as sparse # sparse-matrices

def poisson(N,h):
    """ Poisson matrix 2D"""
    # Second-Derivative Matrix
    data = np.ones((3, N))
    data[1,] = -2*data[1,]
    diags = [-1,0,1] 
    D2 = sparse.spdiags(data,diags,N,N)
    locator = sparse.eye(N,N)
    A = (1/h**2)*(sparse.kron(locator,D2) + sparse.kron(D2,locator))    
    #print A.todense()
    return A
