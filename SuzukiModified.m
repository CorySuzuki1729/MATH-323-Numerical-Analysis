function [w] = SuzukiModified(a,b,c,n)
w = zeros(n+1, 1);
h = (b-a)/n;
t = a;
w(1) = c;
for i = 1:n
    w(i+1) = w(i) + (h/2)*(f(t,w(i))+f(t+h,w(i)+(h*f(t,w(i)))));
    t = t + h;
end
end