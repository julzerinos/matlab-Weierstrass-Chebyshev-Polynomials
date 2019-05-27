n = 5;
p = [0.25, 0, 0, 0, 0, 200];
xi = rand(n, 1);

[xf, k] = Weierstrass(xi, p, 1e-6, 100);

for i = 1:n
    WeierstrassPolynomial(xf(i), p)
end

