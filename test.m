n = 4;
p = zeros(1, n + 1);
xa = zeros(1, n);
for it = 1:n
    p(1, it) = 1/(2^(n-it));
    xa(1, it) = rand + 1i*rand;
end

x = 0;
w = WeierstrassPolynomial(4, x, p)