# variables
var x1 >=0;
var x2 >=0;

# constriants
maximize Profit : 3* x1 + 2* x2 ; # problem
subject to Hours : 3* x1 + 3* x2 <= 120000; 
subject to Cash : 2* x1 + 2* x2 <= 90000;

# option solve lpsolve;
solve ; # solve problem
display x1, x2, Profit;