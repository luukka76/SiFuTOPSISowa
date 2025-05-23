%Needed linguistic variables for importance weight of each criterion as generalized fuzzy
%numbers:
VL=[0 0 0.1 0.2 1];     %Very low
L=[0.1 0.2 0.2 0.3 1];  %Low
ML=[0.2 0.3 0.4 0.5 1]; %Medium low
M=[0.4 0.5 0.5 0.6 1];  %Medium
MH=[0.5 0.6 0.7 0.8 1]; %Medium high
H=[0.7 0.8 0.8 0.9 1];  %High
VH=[0.8 0.9 1.0 1.0 1]; %Very High

%Needed linguistic variables for ratings as fuzzy numbers:

VP=[0,0,1,2, 1];     % Very Poor
P=[1,2,2,3, 1];     % Poor
MP=[2,3,4,5, 1];     % Medium Poor
F=[4,5,5,6, 1];     % Fair
MG=[5,6,7,8, 1];    % Medium Good
G=[7,8,8,9, 1];     % Good
VG=[8,9,10,10,1];   % Very Good

% OWA Weight linguistic variables:
%Full set: {At least one (O), Few (F1), Some (S), Many (Ma), Most (Mo), All (A)}

O=[0,0,0,0,1];
F1=[0,0,1/7,2/7,1];
S=[1/7,2/7,3/7,4/7,1];
Ma=[3/7,4/7,5/7,6/7,1];
Mo=[5/7,6/7,1,1,1];
A=[1,1,1,1,1];