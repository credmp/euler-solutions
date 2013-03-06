-module(problem10).
-export([solve/0]).
-author('Arjen Wiersma').

isPrime(N) ->
    Max = trunc(math:sqrt(N)),
    isPrime(N, 2, Max).

isPrime(N, Try, Max) ->
    if
        Try > Max ->
            true;
        true ->
            if 
                N rem Try == 0 ->
                    false;
                true ->
                    isPrime(N, Try + 1, Max)
            end
    end.

solve() ->
    lists:sum( [ X || X <- lists:seq(2,2000000), isPrime(X)] ).
