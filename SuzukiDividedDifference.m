function [y] = SuzukiDividedDifference(x,y)
[row,col] = size(x);
F(1:col, 1:col) = 0;
for p = 1:col
    F(p,1)=f(p);
end

for i = 2:col
    for j = 2:i
        F(i,j) = (F(i,j-1) - F(i-1,j-1))/(x(i)-x(i-j+1));
    end
end
return

end