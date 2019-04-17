function y=Chebyshev(n,x)
% y=Chebyshev(n,x) computes T_n(x) using the recurrence formulae

% if n==0, y=1; return; end
% if n==1, y=x; return; end

if n==0, y=1; return; elseif n==1, y=x;return; end

t0=1;
t1=x;
xx=2*x;
for k=2:n
    t2=xx.*t1-t0;
    t0=t1;
    t1=t2;
end
y=t2;
end
    
