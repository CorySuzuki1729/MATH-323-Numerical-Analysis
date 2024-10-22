function [p, info] = SuzukiBisection(a,b,TOL,N0)
%WS01-5 Bisection method%
info = 1;
I = 1;
FA = f(a);
while I <= N0
    p = a + (b - a)/2;
    FP = f(p);
    if  abs(FP) < TOL || ((b-a)/2) < TOL
        info = 0;
        return
    end
    I = I + 1
    if (FA * FP) > 0
        a = p;
        FA = FP;
    else
        b = p;
    end

end

end