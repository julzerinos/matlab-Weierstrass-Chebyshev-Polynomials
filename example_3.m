n = 3;
p = [0.25, 0, 1, 0];
xi = rand(n, 1) * i + randn(n,1) * 1e-10;

[xf, k] = Weierstrass(xi, p, 1e-6, 100);

for i = 1:n
    WeierstrassPolynomial(xf(i), p)
end

