-module(create_list).
-export([createList/1]).

createList(N) ->
    createList(1,N,[]).

createList(Count,N,FinalList) when Count == N -> FinalList ++ [N];

createList(Count,N,FinalList) ->
    createList(Count+1,N,FinalList ++ [Count]).

