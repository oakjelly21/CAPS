x=0:0.01:5;
y=10*sin(1*x).^2.*exp(-7*x/2) + (x*0.07)-0.3;
y0=zeros(1,length(x));
plot(x,y,x,y0)
xlabel('x')
ylabel('F(x)')
user_input=input('Value of Roots(insert in matrix form):');
fsolve(@(x)(10*sin(1*x).^2.*exp(-7*x/2) + 0.07*x-0.3),user_input)
