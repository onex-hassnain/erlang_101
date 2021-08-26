-module(concatenate).
-export([concatenateList/1]).

concatenateList(List) ->
    lists:flatten(List).