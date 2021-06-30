var x1 ; # variables
var x2 ;
var x3 ;
var x4 ;
minimize cost : 2* x1 - x2 + 4* x3 ; # problem
subject to con1 : x1 + x2 + x4 <= 2; # constriants
subject to con2 : 3* x2 - x3 = 5;
subject to con3 : x3 + x4 >= 3;
subject to con4 : x1 >= 0;
subject to con5 : x3 <= 0;
solve ; # solve problem
