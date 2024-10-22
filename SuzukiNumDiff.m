function [fp2pf, fp3pf, fp3pm, fp5pf, fp5pm] = SuzukiNumDiff(x_0, h)

fp2pf = (f(x_0+h)-f(x_0))/h;

fp3pf = ((-3*f(x_0))+(4*f(x_0+h))-f(x_0+2*h))/(2*h);

fp3pm = (f(x_0+h)-f(x_0-h))/h;

fp5pf = ((-25*f(x_0))+(48*f(x_0+h))-(36*f(x_0+2*h))+(16*f(x_0+(3*h)))-3*f(x_0+(4*h)))/(12*h);

fp5pm = (f(x_0-(2*h))-(8*f(x_0-h))+(8*f(x_0+h))-f(x_0+(2*h)))/(12*h);
end