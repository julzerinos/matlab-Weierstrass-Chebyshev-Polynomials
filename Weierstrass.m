function [x,k] = Weierstrass(x0, p, tol, max_iter)
% [x,k] = Weierstrass(x0, p, tol, max_iter)
%   computes the roots of a polynomial formed of Chebyshev polynomials.
%
% Output
%   x :         calculated solutions
%   k :         iterations completed
% 
% Input
%   x0 :        array of initial approximations
%   p :         array of coefficients
%   tol :       error tolerance
%   max_iter :  maximum number of iterations

n = max(size(p)) - 1;

dx=ones(n,1);
k=0;

while norm(dx)> tol && k<= max_iter 
    for i = 1:n
        dx(i) = WeierstrassPolynomial(x0(i), p)/rootsProduct(x0,i);
    
    end
    x0=x0-dx;
    k=k+1;
end

x = x0;
end
    
function s = rootsProduct(x, i)
% s = rootsProduct(x, i)
%   Helper function to calculate the product of the differences of root
%   approximations.
%
% Output
%   s : product result
% 
% Input
%   x : array of roots
%   i : ith root to base differences around

    s = 1;
    for j = 1:max(size(x))
        if(i == j)
            continue 
        end
    s = s*(x(j)-x(i));
    end
end