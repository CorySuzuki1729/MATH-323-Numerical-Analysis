function [w] = SuzukiMidpointDE(a,b,c,n)
w = zeros(n+1, 1);
h = (b-a)/n;
t = a;
w(1) = c;
for i = 1:n
    w(i+1) = w(i) + (h*f(t+(h/2), w(i)+(h/2)*f(t, w(i))));
    t = t + h;
end
end