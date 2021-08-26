-module(stringConcat).
-export([stringConcatination/1]).

sepFunction(St,Value) -> Value ++ " " ++ St.

stringConcatination(List)->
    lists:foldl(fun sepFunction/2, "", List).
