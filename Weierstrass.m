function [x,k]=Weierstrass(x0, p, tol, max_iter)
% y=Weierstrass(x, p, tol, max_iter) computes the roots of a polynomial
% formed of Chebyshev polynomials.
% 
% x : array of initial approximations
% p : array of coefficients
% tol : tolerance
% max_iter : maximum number of iterations

n = max(size(p))

dx=tol+1;
k=0; x=[];

while norm(dx)> tol && k<= max_iter 

    for i = i:n
        dx(i) = WeierstrassPolynomial(n, x0(i), p)/product1
    end
    x=x0-dx;
    k=k+1;
    x0=x;
end

end
    
% TD product1 function to calculate products
