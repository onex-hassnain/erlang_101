-module(buyUpdate).
-export([buyModel/2]).

buyModel(Stock,Model)->
    buyModel(Stock,Model,[]).

buyModel([H | T],Model,NewStock) ->
    case proplists:get_value(model, H) of
         Model ->
            InStock1 = list_to_integer(proplists:get_value(instock, H)) - 1,
            S = [Model,proplists:get_value(price,H),{instock,integer_to_list(InStock1)}],
            UpdatedList = NewStock ++ S,
            UpdatedList ++ T;
         _ ->
             buyModel(T, Model, NewStock ++ [H])
        end.
       