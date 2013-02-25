-module(problem5).
-export([main/0]).
-include_lib("eunit/include/eunit.hrl").

%% 2520 is the smallest number that can be divided by each of the
%% numbers from 1 to 10 without any remainder.
%% 
%% What is the smallest positive number that is evenly divisible by
%% all of the numbers from 1 to 20?

divisableBy(_N, []) ->
    true;
divisableBy(N, [H|T]) ->
    case (N rem H == 0) of
        true ->
            divisableBy(N, T);
        false -> 
            false
    end.

solve(N, Try) ->
    case (divisableBy(Try, lists:seq(1,N))) of
        true -> 
            Try;
        false ->
            solve(N, Try + 2520)
    end.

solve(N) ->
    solve(N, 2520).

%%solve_test() ->
%%    2520 = solve(10).

main() ->
    solve(19).
