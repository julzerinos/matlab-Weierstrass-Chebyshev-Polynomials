function y=Weierstrass(x, p, tol, max_iter)
% y=Weierstrass(x, p, tol, max_iter) computes the roots of a polynomial
% formed of Chebyshev polynomials.
% 
% x : array of initial approximations
% p : array of coefficients
% tol : tolerance
% max_iter : maximum number of iterations

n = size(x, 2);

k = 0; %iteration

% while abs(dx)> tol && k<= max_iter 
%     w=polyval(p,x0);
%     if abs(w)<=tol
%         x=x0; return;
%     end
%     
%     dw=polyval(dp,x0);
%     if dw==0
%         disp(' You divide by zero! ');
%         return;
%     end
%     dx=w/dw;
%     x=x0-dx;
%     k=k+1;
%     x0=x;
% end

y = 1

end
    
