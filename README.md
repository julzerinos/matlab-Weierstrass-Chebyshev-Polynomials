# Utilizing the Weierstrass method for finding approximations of roots of a Chebyshev polynomial

This project fulfills the <em>age-long and obviously very universal</em> need of a matlab script which can find the approximations to the roots of a linear combination of Chebyshev polynomials through Weierstrass iteration.

The script can be slightly modified to support finding the approximations of roots of standard polynomials.

## Mathematical Introduction

### The linear combination of Chebyshev polynomials

The linear combination of the Chebyshev polynomials can be represented as

![Latex: Linear combination of Chebyshev polynomials](https://quicklatex.com/cache3/86/ql_14be9253c4bbe5f55ca2b19aacfdd586_l3.png), 

where 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;![Latex: Chebyshev polynomial](https://quicklatex.com/cache3/62/ql_eeffc2af1eeff3c7dfdafde09eb9d862_l3.png) is a Chebyshev polynomial of the first kind of degree <em>n</em> and

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>p</em> are the coefficients of the polynomial.

### The Weierstrass method

The Weierstrass method is an iterative method closely related to Newton's method for finding the roots of a polynomial. In a simplified manner, the method is brought down to the following expression:

![Latex: Weierstrass method iteration](https://quicklatex.com/cache3/04/ql_6841c8b7978c7270141e889e412e3904_l3.png)

It is important to realize, that we are not dealing with a single simple polynomial, but a linear combination of Chebyshev polynomials of the first order, thus the roots are actually representable in the following way:

![Latex: Chebyshev polynomial roots](https://quicklatex.com/cache3/e5/ql_82f8cc0d7dfc2b3d58f7eb09762e3ce5_l3.png)

## The script

### Script functions

We have strived to create the most efficient and compact approach to the task and so in the end we have created three vital functions, which are described below.

```MATLAB
function [x,k] = Weierstrass(x0, p, tol, max\_iter)
``` 
The main function, which computes the roots of a linear combination of Chebyshev polynomials.

```MATLAB
function s = rootsProduct(x, i)
```
An internal helper function used to calculate the product of the differences of root approximations.

```MATLAB
function w = WeierstrassPolynomial(x,p)
```
An external function, which calculates functionvalues for given points of <em>x</em>.

### Methodology

The general approach to the problem should be considered as:

1. User creates an array of coefficients (of size <em>n + 1</em>) and an array of different initial approximations to x
2. User calls the function Weierstrass to conduct iteration on the approximations
    1. The program iterates on the approximates, slightly changing the values in the direction of the real roots of the polynomial on each iteration
    2. The program exits when the norm of the array of changes is smaller than the user-defined tolerance (ie. the change is within bounds of error) or when a maximum amount of iterations have been completed
3. User then uses WeierstrassPolynomial to check the accuracy of the iterations for the final set of x
    1. The Chebyshev polynomials are computed in a recursive manner, as to save computer resources
4. (Optionally) User may plot the linear combination of Chebyshev polynomials

## Examples

The repository is supplied with three samples of script usage. Let's look at one of them.

### `example_1.m`

```MATLAB
n = 3;
p = [0.25, 2, 3, -1];
xi = rand(n, 1);

[xf, k] = Weierstrass(xi, p, 1e-6, 100);

fplot(@(x) WeierstrassPolynomial(x, p), [-10, 10])
grid on
for i = 1:n
    hold on 
    w = WeierstrassPolynomial(xf(i), p);
    line([xf(i) xf(i)],[w - 100, w + 100]);
end
```

The most important steps are to create an array of coefficients of appropriate length and initialize the approximations of the roots (they must be different to each other, otherwise the Weierstrass method will fail).

`Weierstrass()` will return the final approximations of the roots, which are received after `k` iterations. If user-defined maximum iterations have been completed, then the function returns `max_iter + 1` as iterations done.

`WeierstrassPolynomial()` may be used firstly to plot the function using Matlab's `fplot` together with `@(x)` and secondly to calculate the values of `w(x)` for the given final approximations. It should be noted, that the result the function is also its error, as the value should strive to be 0.

## Final comments

The Weierstrass method for finding the roots of a polynomial-type equation (in this case a linear combination of Chebyshev polynomials) is not a satisfactory method.

It is only in the case that the initial approximations of the roots is very close to the real roots, that this method truly works. In most cases, if the roots are too far off of the real values, the method iterations lead to divergence and very strange results.

The limitations of Matlab's calculations also shine through, as one may see in `example_2.m` where the initial approximations <strong>are</strong> the exact roots of the linear combination. The `Weierstrass()` returns after 0 iterations (as there is no iterating to be done, yet the `WeierstrassPolynomial()` returns with error (due to rounding of values).
