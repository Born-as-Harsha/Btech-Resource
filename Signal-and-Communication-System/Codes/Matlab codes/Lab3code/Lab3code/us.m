


%  Program us.m.m 

% Generation of Continuous Time unit Step function
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% Generation of unit step function

function y = us(t,k)
%US Unit step
% y = us(t)
% t: time index
% y: Output signal
y = (t >= k);