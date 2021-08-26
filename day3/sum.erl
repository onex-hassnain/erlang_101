-module(sum).
-export([sum/2]).

sum(N,M) ->
    sum(N,M,0).

sum(N,M,Sum) when N < M ->
    sum(N+1,M,Sum+N);

sum(N,M,Sum) when N =< M ->
    Sum + M.