-module(problem20).
-export([solve/0]).

solve() ->
	lists:sum(
	  lists:map(fun(I) -> I - 48 end,
				integer_to_list(
				  factorial(100)))). 
 
factorial(1) ->
      1;
factorial(N) ->
      N * factorial(N-1).