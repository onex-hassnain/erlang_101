-module(getInteger).
-export([getInt/2]).

getInt(N,List) ->
    io:format("Found : ~w ~n",[Value || Value <- List,Value == N]).