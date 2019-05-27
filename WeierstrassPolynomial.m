function w=WeierstrassPolynomial(x,p)

n = max(size(p)) - 1;
if(n == 0)
    w = p(n+1);
    return
end
t(1) = x;
if(n == 1)
     w = t(1) * p(n) + p(n+1);
     return
end
t(2) = 2 * x^2-1;
if(n == 2)
    w = t(1) * p(n) + t(2) * p(n-1) + p(n+1);
    return
end
w = p(n+1) + t(1) * p(n) + t(2) * p(n-1);
for i = 3:n

     t(i) = 2 * x * t(i-1) - t(i-2); 
     w = w + p(n-i) * t(i);
end

end