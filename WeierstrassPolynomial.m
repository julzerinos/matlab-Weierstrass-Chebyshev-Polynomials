function w=WeierstrassPolynomial(x,p)

n = max(size(p))-1;
t(1) = x;
t(2) = 2*x^2-1;
w=t(1)*p(n)+t(2)*p(n-1)+p(n+1);
for i=3:n

     t(i) = 2*x*t(i-1)-t(i-2); 
     w = w + p(n-i) * t(i);
end

end