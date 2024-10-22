function [p,info] = SuzukiNewton(p0,TOL,N0)
%WS01-7%
i=0;
info=1;
while i <= N0
    p = p0-(f(p0)/fpr(p0));
    if abs(p-p0) < TOL
        info=0;
        return
    end
    i = i + 1
    p0 = p;
end

end