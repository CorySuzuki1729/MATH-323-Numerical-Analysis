function [w] = SuzukiModifiedEuler(a,b,c,n)
w = zeros(n+1, 1);
h = (b-a)/n;
t = a:h:b;
w(1) = c;
for i = 1:n
    w(i+1) = w(i) + (h/2)*(f(t(i),w(i))+f(t(i+1),w(i)+(h*f(t(i),w(i)))));
end
end