mu = [0, 0]
sigma = [1, 0.1; 0.1, 0.5]
mu2 = [2, 2]
sigma2 = [1, 0.1; 0.1, 1.0]
mu3 = [-2, 2]
sigma3 = [0.5, 0.2; 0.2, 0.5]

[X, Y] = meshgrid (linspace (-6, 6, 50))
XY = [X(:), Y(:)]
Z = mvnpdf (XY, mu, sigma)
Z2 = mvnpdf (XY, mu2, sigma2)
Z3 = mvnpdf (XY, mu3, sigma3)
mesh (X, Y, reshape (Z, size (X)))


hold off
