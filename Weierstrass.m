function [x,k]=Weierstrass(x0, p, tol, max_iter)
% y=Weierstrass(x, p, tol, max_iter) computes the roots of a polynomial
% formed of Chebyshev polynomials.
% 
% x : array of initial approximations
% p : array of coefficients
% tol : tolerance
% max_iter : maximum number of iterations

n = max(size(p)) - 1;

dx=ones(n, 1);
k=0; 
x=zeros(n, 1);

while norm(dx)> tol && k<= max_iter 

    for i = 1:n
        dx(i) = WeierstrassPolynomial(x0(i), p)/product1(x0,i);
        disp(dx(i))
        disp("----")
    end
    x=x0-dx;
    k=k+1;
    x0=x;
    disp("=====")
end

end
    
% TD product1 function to calculate products
function s = product1(x, i)
    s = 1;
    for j = 1:max(size(x))
        if(i == j)
            continue 
        end
     s = s*(x(j)-x(i));
     disp(s)
    end
end