-module(problem14).
-export([solve/0]).

solve() -> solve(999999, dict:new(), 0, 0).  
  
solve(1, _, _, Number) -> Number;
solve(N, Dict, Max, Number) ->
	{Cnt, NewDict} = collatz(N, Dict),
	{NewMax, NewNumber} = if 
				 Cnt > Max ->
					 {Cnt, N};
				 true -> {Max, Number}
			 end,
	solve(N-1, NewDict, NewMax, NewNumber).

collatz(1, Dict) -> {1, Dict};
collatz(N, Dict) -> 
	case dict:is_key(N, Dict) of
		true -> {lists:nth(1, dict:fetch(N, Dict)), Dict};
		false -> 
			{Cnt, NewDict} = 
				if 
					N rem 2 == 0 -> collatz(N div 2, Dict);
					true -> collatz(3 * N + 1, Dict)
				end,
			case dict:is_key(Cnt+1, NewDict) of
				true -> {Cnt+1, NewDict};
				false -> {Cnt+1, dict:append(N, Cnt+1, NewDict)}
			end
	end.


