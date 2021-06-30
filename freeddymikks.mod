# variables
var x1 >=0;
var x2 >=0;

# constriants
maximize Profit : 5* x1 + 4* x2 ; # problem
subject to M1 : 6* x1 + 4* x2 <= 24; 
subject to M2 : 1* x1 + 2* x2 <= 6;
subject to M3 : -1 * x1 + 2* x2 <= 1;
subject to M4 : x2 <= 2;

option solve lpsolve;
solve ; # solve problem
display x1, x2, Profit;