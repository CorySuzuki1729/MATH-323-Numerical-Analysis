function [w, info] = SuzukiTrapNewton(a,b,c,N,TOL,M)
w = zeros(N+1,1);
h = (b-a)/N;
t = a;
w(1)=c;
info = 0;
for i = 1:N
    k1 = w(i) + (h/2)*f(t,w(i));
    w0 = k1;
    j = 1;
    flag = 0;
    while flag == 0
        top = w0 - (h/2)*f(t+h,w0) - k1;
        bottom = 1 - (h/2)*fy(t+h,w0);
        w(i+1) = w0 - top/bottom;
        if abs(w(i+1)-w0) < TOL
            flag = 1;
        else
            j = j + 1;
            w0 = w(i+1);
            if j > M
                flag = 1;
                return
            end
        end
    end
    t = a + (i*h);
end
end