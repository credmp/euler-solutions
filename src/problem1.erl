-module(problem1).
-export([main/1]).

%% If we list all the natural numbers below 10 that are multiples of 3
%% or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
%%
%% Find the sum of all the multiples of 3 or 5 below 1000.

main(Number) -> 
    lists:sum(lists:filter(fun(X) -> (X rem 3 == 0) or (X rem 5 == 0) end, lists:seq(1,Number))).
    
