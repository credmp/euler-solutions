-module(problem9).
-export([solve/0]).
-author('Arjen Wiersma').

%% A Pythagorean triplet is a set of three natural numbers, a b c, for
%% which,

%% a^2 + b^2 = c^2
%% For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

%% There exists exactly one Pythagorean triplet for which a + b + c = 1000.
%% Find the product abc.

solve(N, [H|T], L, MaxN) ->
    Npow = math:pow(N,2) + math:pow(H,2),
    Nsqr = math:sqrt(Npow),
    case N+H+Nsqr == MaxN of
        true ->
            [N,H,trunc(Nsqr)];
        false ->
            solve(N, T, L, MaxN)
    end;
solve(N, [], L, MaxN) when N < 1000 ->
    solve(N+1, L, L, MaxN);
solve(_N, [], _L, _MaxN) ->
    0.
    


solve(N, MaxN) ->
    L = lists:seq(1,MaxN),
    solve(N, L, L, MaxN).

solve() ->
    [A,B,C] = solve(1,1000),
    A*B*C.
