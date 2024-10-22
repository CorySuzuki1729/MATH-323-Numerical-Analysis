function n=BisectionError(a,b,eps)
%WS01-4%
myerror = b - a;
n = 0;
while myerror >= eps
    n = n + 1;
    myerror = myerror/2;
end

end