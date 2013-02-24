-module(problem2).
-export([main/0]).

solve(Max, Cur, Prev, Acc) ->
    if
        Cur > Max ->
            Acc;
        Cur rem 2 == 0 ->
            solve(Max, Cur + Prev, Cur, Acc+Cur);
        true ->
            solve(Max, Cur + Prev, Cur, Acc)
    end.

main() ->
    solve(4000000, 1, 1, 0).
