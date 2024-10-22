%[p, info] = SuzukiSecant(pi/4,pi/2,10^(-8),10000)%
%10^(-5) means accurate to 5 digits%
%On exams, report solution and number of iterations%

a=0;
b=2;
c0=0.5;
c1=0.8292986209;
c2=1.214087651;
c3=1.6489406;
N=10;
%N=100;
%TOL = 10^(-6);
%M = 10;
%[w] = SuzukiEuler(a,b,c,n)
%[w] = SuzukiModifiedEuler(a,b,c,n)
%[w] = SuzukiMidpointDE(a,b,c,n)
%[w] = SuzukiModified(a,b,c,n)
%[w] = SuzukiRK4(a,b,c,n)
[w] = SuzukiAB34Step(a,b,c0,c1,c2,c3,N)
%[w, info] = SuzukiTrapNewton(a,b,c,N,TOL,M)
%for (i) in ws9
% n = 4;
% A = zeros(n);
% for i = 1:n
%     A(i,i) = 2;
% end
% 
% for i = 1:n-1
%     A(i, i+1) = 0.4;
%     A(i+1, i) = 0.4;
% end
% 
% b = zeros(n,1);
% b(1)=2.4;
% for i = 2:n-1
%     b(i) = 2.8;
% end
% b(n)=2.4;
% A
% b

% A_1 = zeros(n);
% for i = 1:n
%     for j = 1:n
%         A_1(i,j)=1/(i+j-1);
%     end
% end
% 
% b_1 = zeros(n,1);
% for i = 1:n
%     for j = 1:n
%         b_1(i) = b_1(i) + A_1(i,j);
%     end
% end
% A_1
% b_1