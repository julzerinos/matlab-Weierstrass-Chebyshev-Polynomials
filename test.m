n = 4;
p = zeros(1, n);
x = zeros(1, n);
for it = 1:n
    p(1, it) = 1/(2^(n-it));
    x(1, it) = rand + 1i*rand;
end

Weierstrass(x, p, 1e-6, 100);