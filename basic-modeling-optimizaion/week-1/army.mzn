% army.mnz
% Gathering an Army problem.
%
% First example of the course, where we must find a combination
% of soldiers that maximize the total power of the army.
%

% Problem variables
int: budget = 10000;
var 0..1000: F;
var 0..400: L;
var 0..500: Z;
var 0..150: J;

% Constraints
constraint 13*F + 21*L + 17*Z + 100*J <= budget;

% Maximize function
solve maximize 6*F + 10*L + 8*Z + 40*J;

output [
  "F = \(F),", 
  "L = \(L),", 
  "Z = \(Z),", 
  "J = \(J)" 
];
