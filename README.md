# The Weierstrass method for finding all roots of a linear combination of Chebyshev polynomials of the first order

## The linear combination of Chebyshev polynomials

The linear combination of the Chebyshev polynomials can be represented as

<img src="http://www.sciweavers.org/tex2img.php?eq=w%28x%29%20%3D%20p_1%20%5Ccdot%20%20T_n%28x%29%20%2B%20p_2%20%5Ccdot%20T_%7Bn-1%7D%28x%29%20%2B%20...%20%2B%20p_n%20%5Ccdot%20T_1%28x%29%20%2B%20p_%7Bn%2B1%7D&bc=White&fc=Black&im=jpg&fs=18&ff=iwona&edit=0" align="center" border="0" alt="w(x) = p_1 \cdot  T_n(x) + p_2 \cdot T_{n-1}(x) + ... + p_n \cdot T_1(x) + p_{n+1}" width="592" height="29" />, 

where 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="http://www.sciweavers.org/tex2img.php?eq=T_n%28x%29&bc=White&fc=Black&im=jpg&fs=12&ff=iwona&edit=0" align="center" border="0" alt="T_n(x)" width="42" height="19" /> is a Chebyshev polynomial of the first kind of degree <em>n</em> and

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em>p</em> are the coefficients of the polynomial.

## The Weierstrass method

The Weierstrass method is an iterative method closely related to Newton's method for finding the roots of a polynomial. In a simplified manner, the method is brought down to the following expression:

<img src="http://www.sciweavers.org/tex2img.php?eq=x%5E%7Bk%2B1%7D_i%20%3D%20x%5E%7Bk%7D_i%20-%20%5Cfrac%7Bw%28x%5E%7Bk%7D_i%29%7D%7B%5Cprod_%7Bj%3D1%2C%20i%5Cneq%20j%7D%5E%7Bn%7D%20%28x%5E%7Bk%7D_j%20-%20x%5E%7Bk%7D_i%29%7D&bc=White&fc=Black&im=jpg&fs=18&ff=iwona&edit=0" align="center" border="0" alt="x^{k+1}_i = x^{k}_i - \frac{w(x^{k}_i)}{\prod_{j=1, i\neq j}^{n} (x^{k}_j - x^{k}_i)}" width="327" height="69" />

It is important to realize, that we are not dealing with a single simple polynomial, but a linear combination of Chebyshev polynomials of the first order, thus the roots are actually representable in the following way:

<img src="http://www.sciweavers.org/tex2img.php?eq=x_i%20%5Capprox%20%5Calpha_i%20%3D%20cos%28%5Cfrac%7B2i%20%2B%201%7D%7B2n%7D%5Cpi%29%20%5Ctextrm%7B%20for%20%7D%20i%20%3D%201%2C%202%2C%203%2C%20...%20n%20&bc=White&fc=Black&im=jpg&fs=18&ff=iwona&edit=0" align="center" border="0" alt="x_i \approx \alpha_i = cos(\frac{2i + 1}{2n}\pi) \textrm{ for } i = 1, 2, 3, ... n " width="442" height="54" />
