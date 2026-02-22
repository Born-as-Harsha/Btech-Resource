function y = tripuls(t, width)
%TRIPULS Generate a triangular pulse of given width centered at t=0
%   y = tripuls(t, width)
%   t     : time vector
%   width : width of the pulse (default = 1)

if nargin < 2
    width = 1;
end

% Centered triangular pulse: |t| < width/2
y = zeros(size(t));
idx = abs(t) < (width / 2);
y(idx) = 1 - (2 * abs(t(idx)) / width);
end
