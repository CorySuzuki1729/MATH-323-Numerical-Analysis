function [w] = SuzukiAB34Step(a,b,c0,c1,c2,c3,N)
w = zeros(N+1, 1);
h = (b-a)/N;
t = a:h:b;
w(1) = c0;
w(2) = c1;
w(3) = c2;
w(4) = c3;
for i = 4:N
    w(i+1) = w(i) + (h/24)*((55*f(t(i),w(i)))-(59*f(t(i-1),w(i-1)))+(37*f(t(i-2),w(i-2)))-(9*f(t(i-3),w(i-3))));
end
end