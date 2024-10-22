function [Intval] = SuzukiCSimpson(a,b,n)
Intval = 0;
intvala = 0;
intvalb = 0;
h = (b-a)/n;
for i = 1:(n/2)
    intvala = intvala + f(a + (2*i-1)*h);
end

for i = 1:((n/2)-1)
    intvalb = intvalb + f(a + (2*i*h));
end
Intval = h*(f(a) + (4*intvala) + (2*intvalb)+f(b))/3;