function [w] = SuzukiEuler(a,b,c,n)
w = zeros(n+1, 1);
h = (b-a)/n;
t = a;
w(1) = c;
for i = 2:n+1
    w(i) = w(i-1) + (h*f(t, w(i-1)));
    t = t + h;
end
end