-module(problem3).
-export([main/0]).

%% The prime factors of 13195 are 5, 7, 13 and 29.
%%
%% What is the largest prime factor of the number 600851475143 ?

solve(N) ->
    solve(N, 2, []).

solve(N, CurDiv,Acc) ->
    if
        CurDiv > N div 2 ->
            N;
        true ->
            if
                N rem CurDiv == 0 ->
                    io:format("[~p] ", [CurDiv]),
                    solve(N div CurDiv, CurDiv, Acc ++ [CurDiv]);
                true ->
                    solve(N, CurDiv + 1, Acc)
            end
    end.

main() ->
    io:format("Problem 3~n"),
    solve(600851475143).
