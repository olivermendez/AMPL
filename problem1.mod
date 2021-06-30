# variables
var x1 >=0;
var x2 >=0;

# constriants
maximize cost : 1.2* x1 + x2 ; # problem
subject to con1 : x1 <= 8; 
subject to con2 : x2 <= 10;
subject to con3 : 26* x1 + 20* x2 <= 300;
option solve lpsolve;
solve ; # solve problem
display x1, x2, cost;