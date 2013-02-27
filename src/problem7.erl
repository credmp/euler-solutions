-module(problem7).
-export([solve/1]).

%% By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we
%% can see that the 6th prime is 13.
%%
%% What is the 10 001st prime number?

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


solve(Need, Try, NumberFound, LastFound) ->
    if
        NumberFound == Need ->
            LastFound;
        true ->
            case isPrime(Try) of
                true ->
                    solve(Need, Try + 2, NumberFound + 1, Try);
                false ->
                    solve(Need, Try + 2, NumberFound, LastFound)
            end
    end.
                    
solve(Need) ->
    solve(Need, 3, 1, 2).


