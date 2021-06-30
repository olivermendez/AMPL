param n; #cantidad de variables
param m; # cantidad de restricciones

set J:= {1..n}; # vector que contendra las varibales de decicion
set I:= {1..m}; # vector que contendra las varibales de retricciones

param C := {J} >= 0 ; #vector con 2 elementos
param A := {I,J} >= 0 ; # matrix de los coeficientes n*m
param B := {I} >= 0 ; # las retricionees <=120000, <=90000

var X{J} => 0; #variables decisiorias 1x2, 2x2,

# j
maximize Objective: #funcion objetivo
    sum{j in J} C[j] * X[j];
;
subject to Constraint {i in I}:
    sum{j in J} A[i,j] * X[j]<= B[i]
;
