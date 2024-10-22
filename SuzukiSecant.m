function [p, info] = SuzukiSecant(p0,p1,TOL,N0)
I=2;
info=1;
q0=f(p0);
q1=f(p1);
while I <= N0
    p=p1-(q1*(p1-p0)/(q1-q0));
    if abs(p-p1) < TOL
        info=0;
        return
    end
    I = I + 1;
    p0=p1;
    q0=q1;
    p1=p;
    q1=f(p);
end

end