-module(problem4).
-export([main/0]).

%% A palindromic number reads the same both ways. The largest
%% palindrome made from the product of two 2-digit numbers is 9009 =
%% 91 99.
%%
%% Find the largest palindrome made from the product of two 3-digit
%% numbers.

isPalindrom(P) ->
    S = integer_to_list(P),
    R = lists:reverse(S),
    S == R.

max([H|T]) ->
    lists:max([H|T]);
max([]) ->
    0.

solve(N1, N2, Best) ->
    M = max([N1 * X || X <- lists:seq(1,N2), isPalindrom(N1*X) == true]),
    NewBest = lists:max([Best, M]),
    if
        N1 == 1 ->
            Best;
        true ->
            solve(N1-1, N2, NewBest)
    end.
 
solve(N) ->
    solve(N,N, 0).

main() ->
    io:format("Problem 4~n"),
    solve(999).

