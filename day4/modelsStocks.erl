-module(getModels).
-export([get_models/1]).

get_models(Stocks) ->
    get_models(Stocks,[]).

get_models([],Models)->Models;
get_models([H | T],Models) ->
    get_models(T,Models ++ [proplists:get_value(model,H)]).