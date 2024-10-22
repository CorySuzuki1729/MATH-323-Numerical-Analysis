function [Intval] = SuzukiMidPoint(a,b,n)
h = (b-a)/(n+2);
Intval = 0;
for i = 0:(n/2)
    Intval = Intval + f(a + (2*i+1)*h);
end
Intval = (2*h) * Intval;
end