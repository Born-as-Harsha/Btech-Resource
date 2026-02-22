t = -2:0.001:2;
y = tripuls(t, 1); % 1 is the width of the triangle
figure;
plot(t, y, 'b', 'LineWidth', 2);
grid on;
title('Triangular Pulse');
xlabel('Time');
ylabel('Amplitude');
 axis([-2 2 -0.1 1.1]);
