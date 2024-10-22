%Draw the graph of y=sin(x) on the interval [0,2pi]%
x = 0:0.01:2*pi; %0.01 is the step size%
%Sample the x values and find the function values%
y = sin(x);
plot(x,y)

%You can change the function and step size%

hold on

x = 0:0.01:2*pi;
y = cos(x);
plot(x,y)