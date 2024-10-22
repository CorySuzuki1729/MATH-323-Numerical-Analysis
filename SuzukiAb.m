function [c] = SuzukiAb(A,b)
[m,n] = size(A);
c=zeros(m,1);
for J = 1:m
    %c(J)=0;%
    for I = 1:n
        c(J) = c(J) + A(J,I) * b(I);
    end
end

end