function w = WeierstrassPolynomial(x,p)
% w = WeierstrassPolynomial(x,p)
%   computes the value of the Weierstrass+Chebyshev polynomial for the
%   given value of x
%
% Output
%   w : value for input x
% 
% Input
%   x : point for function value
%   p : array of coefficients of the polynomial

n = max(size(p)) - 1;
t = ones(n, 1);

if(n == 0)
    w = p(1);
    return
end

t(1) = x;
if(n == 1)
     w = t(1) * p(1) + p(2);
     return
end

t(2) = 2 * x^2 - 1;
if(n == 2)
    w = t(2) * p(1) + t(1) * p(2) + p(3);
    return
end

w = p(n+1) + t(1) * p(n) + t(2) * p(n-1);
for i = 3:n
     t(i) = 2 * x * t(i-1) - t(i-2); 
     w = w + p(n-i+1) * t(i);
end

end