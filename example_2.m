n = 7;
p = [1/(2^6), zeros(1, n)];
for i = 1:n
    xi(i) = cos((2*i-1)*pi/(2*n));
end

[xf, k] = Weierstrass(xi, p, 1e-6, 100);
fplot(@(x) WeierstrassPolynomial(x, p), [-2, 2])
grid on
for i = 1:n
    hold on
    w = WeierstrassPolynomial(xf(1, i), p);
    line([xf(1, i) xf(1, i)],[w - 100, w + 100]);
end