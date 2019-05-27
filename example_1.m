n = 3;
p = [0.25, 2, 3, -1];
xi = rand(n, 1);

[xf, k] = Weierstrass(xi, p, 1e-6, 100);

for i = 1:n
    WeierstrassPolynomial(xf(i), p)
end