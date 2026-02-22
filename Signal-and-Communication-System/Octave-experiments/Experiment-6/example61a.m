clear all;
close all;
clc;

pkg load symbolic; % Load symbolic package

% Define symbolic variables
syms t s;

% Define x(t) = δ(t) + u(t)
x = dirac(t) + heaviside(t);

% Compute Laplace transform
X = laplace(x, t, s);

% Display result
disp('The Laplace transform of x(t) = δ(t) + u(t) is:');
disp(X); % Expected: X(s) = 1 + 1/s

