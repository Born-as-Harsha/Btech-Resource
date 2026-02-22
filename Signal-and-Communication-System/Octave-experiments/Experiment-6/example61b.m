clear all; close all; clc;
pkg load symbolic;
syms t s
x = t * cos(2*t); % u(t) is implicit in Laplace
X = laplace(x, t, s);
disp('Laplace Transform of x(t) = t·cos(2t) is:');
disp(X)
