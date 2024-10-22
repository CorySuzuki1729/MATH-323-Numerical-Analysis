function [Intval] = SuzukiCTrapezoidal(a,b,n)
h = (b-a)/n;
Intval = 0;
for i = 1:(n-1)
    Intval = Intval + f(a+(i*h));
end
Intval = h*(f(a) + (2*Intval) + f(b))/2;
end