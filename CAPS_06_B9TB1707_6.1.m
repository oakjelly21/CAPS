pkg load odepkg;
function dx = f(t,x)
  c= 1;
  k=2;
  dx = [x(2),-c*x(2)-k*x(1)]
  end
[X,Y]=ode45(@f,0:0.1:10,[1 0])
plot(X,Y);
legend('displacement','velocity')
xlabel('Time')