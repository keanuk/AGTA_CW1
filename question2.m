p1a = [-1, -8, -3, -2, -5; -7, -3, -4, -4, -3; -5, -6, -4, -11, -4; -4, -5, -9, -4, -7; -2, -1, -5, -6, -12];
p1f = [1, 1, 1, 1, 1];
p1b = [-1, -1, -1, -1, -1];

p2a = [1, 7, 5, 4, 2; 8, 3, 6, 5, 1; 3, 4, 4, 9, 5; 2, 4, 11, 4, 6; 5, 3, 4, 7, 12];
p2f = [-1, -1, -1, -1, -1]; 
p2b = [1, 1, 1, 1, 1];

lb = zeros(1,5);
ub = [];
aeq = ones(1,5);
beq = 1;

p = linprog(p1f, p1a, p1b, aeq, beq, lb, ub);
q = linprog(p2f, p2a, p2b, aeq, beq, lb, ub);

disp('Player 1: ');
disp(p);
disp('Player 2: ');
disp(q);