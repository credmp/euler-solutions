-module(problem6).
-export([solve/1]).

%% The sum of the squares of the first ten natural numbers is,
%% 
%% 12 + 22 + ... + 102 = 385
%% The square of the sum of the first ten natural numbers is,
%% 
%% (1 + 2 + ... + 10)2 = 552 = 3025 Hence the difference between the
%% sum of the squares of the first ten natural numbers and the square
%% of the sum is 3025 - 385 = 2640.
%% 
%% Find the difference between the sum of the squares of the first one
%% hundred natural numbers and the square of the sum.

solve(N) ->
    L = [ math:pow(X,2) || X <- lists:seq(1,N) ],
    SumSquare = lists:sum(L),
    SquareSum = math:pow(lists:sum(lists:seq(1,N)),2),
    SquareSum - SumSquare.
