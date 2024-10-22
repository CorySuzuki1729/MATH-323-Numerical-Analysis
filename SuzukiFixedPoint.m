function [p, info] = SuzukiFixedPoint(p0,TOL,N0)
I = 1;
info = 1;
while I <= N0
    p = f(p0);
    if abs(p - p0) < TOL
        info = 0;
        return
    end
    I = I + 1
    p0 = p;
end

end

%For N0, usually use between 100 and 10000%