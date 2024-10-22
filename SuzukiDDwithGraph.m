function [F,d] = SuzukiDDwithGraph(x,y)
n = length(x)-1;
F = zeros(n+1);
d = zeros(n+1,1);
for i = 1:n+1
    F(i,1) = y(i);
end
for j = 2:n+1
    for k = j:n+1
        F(k,j) = (F(k, j-1)-F(k-1, j-1))/(x(k)-x(k-j+1));
    end
end
for i = 1:n+1
    d(i) = F(i,i);
end
myx = x(1):0.01:x(n);
myy = zeros(size(myx));
for i = 1:length(myx)
    myy(i) = d(n+1); 
    for j = n:-1:1
        myy(i) = myy(i)*(myx(i)-x(j))+d(j);
    end
end
plot(myx, myy);
end