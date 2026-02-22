

%  Program urd.m.m 

% Generation of Continuous Time unit Ramp function
% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

% Generation of unit Ramp function


function y = ur(t,k)
% function y = ur(t)
%UR Unit Ramp
% y = us(t)
% t: time index
% y: output signal
y = (t-k).*us(t,k);
