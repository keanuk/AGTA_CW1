% a = [6, 1; 3, 4];
% a = -a;
% f = [1, 1];
% b = [1, 1];
% 
% lb = zeros(1,2);
% ub = [];
% aeq = ones(1,2);
% beq = 1;
% 
% p = linprog(f, a, b, aeq, beq, lb, ub);
% 
% disp(p);

a = [4, 8, 2, 4, 2, -v; 2, 3, 4, 9, 5, -v; 1, 5, 6, 3, 6, -v; 9, 6, 1, 4, 4, -v; 5, 2, 7, 6, 1, -v];
a = -a;
f = [0, 0, 0, 0, 0, -1];
b = [0; 0; 0; 0; 0];
b = -b;

lb = zeros(1,5);
ub = [];
aeq = [1, 1, 1, 1, 1, 0];
beq = 1;

p = linprog(f, a, b, [], [], lb, ub);

disp(p);
