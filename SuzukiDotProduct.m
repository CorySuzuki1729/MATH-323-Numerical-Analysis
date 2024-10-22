function [c] = SuzukiDotProduct(a,b)
i = 1;
n = length(a);
c=0;
for i = 1:n 
    c = c + a(i) * b(i);
end

end

%Semicolons separate and makes a new row%