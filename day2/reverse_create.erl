-module(reverse_create).
-export([reverseList/1]).

reverseList(N) ->
    reverseList(N,[]).

reverseList(N,FinalList) when N =<0-> FinalList;

reverseList(N,FinalList) ->
    reverseList(N-1,FinalList ++ [N]).