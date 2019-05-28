n = 7;
p = [1/(2^6), zeros(1, n)];
for i = 1:n
    xi(i) = cos((2*i-1)*pi/(2*n));
end
    
[xf, k] = Weierstrass(xi, p, 1e-6, 1);

fplot(@(x) WeierstrassPolynomial(x, p), [-10, 10])
grid on
for i = 1:n
    hold on 
    w = WeierstrassPolynomial(xf(i), p);
    line([xf(i) xf(i)],[w - 100, w + 100]);
end