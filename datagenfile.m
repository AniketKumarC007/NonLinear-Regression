rng('default') % For reproducibility
mu = 1.1;
sigma = 1.5;
r = random('Normal',mu,sigma)
A0 = 1.5;
A1 = 1.5
X= linspace(1,10,100);
%jacobian(exp(a0*(1- exp(-a1*(x)))),[a0 a1])
Y = exp(A0*(1- exp(-A1*(X))));
Y = (Y + r)'
X = X'
