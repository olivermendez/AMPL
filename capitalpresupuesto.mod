# variables
var x1 >=0 integer;
var x2 >=0 integer;
var x3 >=0 integer;
var x4 >=0 integer;
var x5 >=0 integer;

# constriants
maximize Profit : 20* x1 + 40* x2 + 20* x3 + 15* x4 + 30* x5; 
subject to Cons1 : 5* x1 + 4* x2 + 3* x3 + 7* x4 + 8* x5 <= 25;
subject to Cons2 : 1* x1 + 7* x2 + 9* x3 + 4* x4 + 6* x5 <= 25;
subject to Cons3 : 8* x1 + 10* x2 + 2* x3 + 1* x4 + 10* x5 <= 25;

option solve lpsolve;
solve ; # solve problem
display x1, x2, x3, x4, x5, Profit;