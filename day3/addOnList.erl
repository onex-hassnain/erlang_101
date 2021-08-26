-module(addOnList).
-export([addOneList/1]).

addOneList(List)->
    addOneList(List,[]).

addOneList([],NewList) -> NewList;
addOneList([H | T],NewList)->
    addOneList(T,NewList ++ [H+1]).
