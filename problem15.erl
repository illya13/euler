-module(problem15).
-export([solve/0]).

solve() -> 
	Fact40 = factorial(40),
	Fact20 = factorial(20),
	round(Fact40 / (Fact20 * Fact20)).  
  
factorial(1) ->
      1;
factorial(N) ->
      N * factorial(N-1).