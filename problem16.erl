-module(problem16).
-export([solve/0]).

solve() ->
	lists:sum(
	  lists:map(fun(I) -> I - 48 end,
				integer_to_list(round(math:pow(2, 1000))))). 
 
	