-module(separateList).
-export([separateList/1]).

separateList(List)->
    separateList(List,[],[],[]).

separateList([],I,A,F) -> {I,A,F};
separateList([H | T],I,A,F) when is_integer(H)->
    separateList(T,I ++ [H],A,F);


separateList([H | T],I,A,F) when is_atom(H)->
    separateList(T,I,A ++ [H],F);

separateList([H | T],I,A,F) when is_float(H)->
    separateList(T,I,A,F ++ [H]).
