x=linspace(-1,1);
y=[Chebyshev(3,x);Chebyshev(5,x);Chebyshev(10,x)];
plot(x,y)
grid
xlabel('    x   ')
ylabel(' y   ')
axis('normal')
legend('y=T_3(x)','y=T_5(x)','y=T_{10}(x)')