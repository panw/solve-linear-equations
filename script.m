 %%%%%%%%%%%%%%%%%%%%%%%%%% Solving System of Linear Equations %%%%%%%%%%%%%%%%%%%%%%%%%%
% (GNU License)
% Systems of linear equations are ubiquitous in numerical analysis.
% To solve the set of linear equations Ax = b, use the left division operator, ‘\’
% This is conceptually equivalent to inv (a) * b,
% but avoids computing the inverse of a matrix directly.
% 
% A simple example comes from chemistry and the need to obtain balanced chemical equations.
% Consider the burning of hydrogen and oxygen to produce water:
%
%     H2 + O2 --> H2O
% 
% The equation above is not accurate.
% The Law of Conservation of Mass requires that the number of molecules of each type
% balance on the left- and right-hand sides of the equation. 
% Writing the variable overall reaction with individual equations for hydrogen and oxygen one finds:
%
%     x1*H2 + x2*O2 --> H2O
%     H: 2*x1 + 0*x2 --> 2
%     O: 0*x1 + 2*x2 --> 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SaturnParams is a cell array containing the matrices A and b.
% For instance, SaturnParams='{[ 2, 0; 0, 2 ], [ 2; 1 ]}'
A = SaturnParams{1};
b = SaturnParams{2};

% The solution is found in just a one line of code:
x = A \ b;

% The solution below is printed as an array to be sent as the HTTP response data:
printf("[%f %f]", x(1), x(2));
