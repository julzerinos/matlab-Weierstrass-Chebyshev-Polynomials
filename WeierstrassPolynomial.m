function w=WeierstrassPolynomial(x,p)

% TD change to be more efficient
n = max(size(p));
% w = 0;
t(1) = x;
t(2) = 2*x^2-1;
w=t(1)*p(1,1)+t(2)+p(1,2);
for i=3:n
    % w = w + p(1, i) * Chebyshev(n + 1 - i, x);
     t(i) = 2*x*t(i-1)-t(i-2); 
     w = w + p(1,i) * t(i);
end

end