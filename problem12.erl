-module(problem12).
-export([solve/0]).

solve() -> solve(1).

solve(N) ->
	T = triangle(N),
	F = factors(T),
	if F > 500 -> T;
	   true -> solve(N+1)
	end.

triangle(N) -> round(N * (N+1) / 2). 

factors(N) ->
	factors(N, round(math:sqrt(N))).

factors(_,0) -> 1;
factors(N,I) ->
	case (N rem I) =:= 0 of
		true ->	2+factors(N,I-1);
		false -> factors(N,I-1)
	end.