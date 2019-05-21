function w=WeierstrassPolynomial(n,x,p)

% TD change to be more efficient

T = 

w = 0;
for i=1:n + 1
   w = w + p(1, i) * Chebyshev(n + 1 - i, x);
end

end