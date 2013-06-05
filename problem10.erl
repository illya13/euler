-module(problem10).
-export([solve/1]).

solve(N) -> solve(lists:seq(2,N), 0).
solve([], Sum) -> Sum;
solve([H|T], Sum) -> solve([X || X <- T, X rem H /= 0], Sum+H).
