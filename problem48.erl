-module(problem48).
-export([solve/0]).

solve() -> lists:sum(solve(1, 1000)) rem 10000000000.

solve(I, N) when I > N -> [];
solve(I, N) -> [round(pow(I))] ++ solve(I+1, N). 

pow(N) -> pow(1, 1, N).

pow(Res, I, N) when I > N -> Res;
pow(Res, I, N) -> pow(Res*N, I+1, N).
	