n = 1;

p = rand(n + 1, 1);
p(1) = 1/(2^(n-1));

xa = rand(n, 1);

% 
% % TD examples
% 

x = 0;
w = WeierstrassPolynomial(x, p)
p
% [x, k] = Weierstrass(xa, p, 1e-6, 100)