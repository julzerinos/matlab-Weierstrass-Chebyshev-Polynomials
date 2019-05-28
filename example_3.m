n = 3;
p = [0.25, 0, 1, 0];
xi = rand(n, 1) * i + randn(n,1) * 1e-10;

[xf, k] = Weierstrass(xi, p, 1e-6, 100);

fplot(@(x) WeierstrassPolynomial(x, p), [-10, 10])
grid on
for i = 1:n
    hold on 
    w = WeierstrassPolynomial(xf(i), p);
    line([xf(i) xf(i)],[w - 100, w + 100]);
end

