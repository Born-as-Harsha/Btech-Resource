

%  Program ud.m

% Generation of Continuous Time unit impulse function

% Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,


function y = ud(t,k)
% input:
%  t   :   Time vector
%  k   :   Shifting by k. k = +ve for right shift K = -ve for left shift
% Output:  Shifted delta function. 
% usage:  y = ud(t,k)

% Example:
%    t = -3:0.01:3;
%    y1 = ud(t,0);  % Unit delta function
%    y2 = ud(t,2);  % Right side shifted delta function
%    y3 = ud(t,-1); % Left side shifted delta function
%    
%    figure();
%    set(gca,'fontsize',14);
%    plot(t, y1,'b','LineWidth',3); hold on; 
%    plot(t, y2,'--m','LineWidth',3); hold on; 
%    plot(t, y3,'--r','LineWidth',3); hold on; 
%    xlabel('time  ----->');ylabel('Amplitude ----->');
%    legend('delta(t)','delta(t-2)','delta(t+1)');
%    title('Operations on delta function');axis([-3 3 -0.1 1.2]); grid on;

 % Developed by Dr. M. Venu Gopala Rao, Professor, Dept. of ECE,
% KL University, Vaddeswaram, Guntur Dt., A.P., India.
% Email: mvgr03@kluniversity.in,  mvgr03@gmail.com,

y = zeros(1,length(t));
y(t == k)=1;

