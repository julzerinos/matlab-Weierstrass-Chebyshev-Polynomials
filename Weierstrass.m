function [x,k]=Weierstrass(x0, p, tol, max_iter)
% y=Weierstrass(x, p, tol, max_iter) computes the roots of a polynomial
% formed of Chebyshev polynomials.
% 
% x : array of initial approximations
% p : array of coefficients
% tol : tolerance
% max_iter : maximum number of iterations

n = max(size(p));

dx=tol+1;
k=0; x=[];

while norm(dx)> tol && k<= max_iter 

    for i = 1:n
        dx(i) = WeierstrassPolynomial(x0(i), p)/product1(x0,i);
    end
    x=x0-dx;
    k=k+1;
    x0=x;
end

end
    
% TD product1 function to calculate products
function s = product1(x, i)
    s = 1;
    for j = 0:n
     s = s*(x(j)-x(i));
    end
end