-module(deleteModel).
-export([deleteModel/2]).

deleteModel(Stock,Model) ->
    deleteModel(Stock,Model,[]).

deleteModel([H | T],Model,NewStock) ->
    case proplists:get_value(model, H) of
        Model -> NewStock ++ T;
      _->
        deleteModel(T, Model, NewStock ++ [H])
        end.
       