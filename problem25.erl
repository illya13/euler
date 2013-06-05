-module(problem25).
-export([solve/0]).

solve() -> solve(1).

solve(N) -> 
	case length(integer_to_list(fibonacci(N))) >= 1000 of
		true -> N;
		false -> solve(N+1)
	end.
 
fibonacci(N) -> {Fib, _} = fibonacci(N, {1, 1}, {0, 1}), Fib.
fibonacci(0, _, Pair) -> Pair;
fibonacci(N, {Fib1, Fib2}, Pair) when N rem 2 == 0 ->SquareFib1 = Fib1*Fib1,
    fibonacci(N div 2, {2*Fib1*Fib2 - SquareFib1, SquareFib1 + Fib2*Fib2}, Pair);
fibonacci(N, {FibA1, FibA2}=Pair, {FibB1, FibB2}) ->
    fibonacci(N-1, Pair, {FibA1*FibB2 + FibB1*(FibA2 - FibA1), FibA1*FibB1 + FibA2*FibB2}).
