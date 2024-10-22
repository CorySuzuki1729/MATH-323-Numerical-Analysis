function [w] = SuzukiRK4(a,b,c,n)
w = zeros(n+1, 1);
h = (b-a)/n;
t = a:h:b;
w(1) = c;
for i = 1:n
    k1 = h*f(t(i), w(i));
    k2 = h*f(t(i)+(h/2), w(i)+(0.5*k1));
    k3 = h*f(t(i)+(h/2), w(i)+(0.5*k2));
    k4 = h*f(t(i+1), w(i)+k3);
    w(i+1) = w(i) + (1/6)*(k1+(2*k2)+(2*k3)+k4);
end
end