-module(problem1).
-export([main/1]).

main(Number) -> 
    lists:sum(lists:filter(fun(X) -> (X rem 3 == 0) or (X rem 5 == 0) end, lists:seq(1,Number))).
    
