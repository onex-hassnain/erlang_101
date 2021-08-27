-module(getPrice).
-export([getPrice/2]).

getPrice(Stock,Model) ->
    getPrice1(Stock,Model).

getPrice1([], _) -> 'Model Not Found';
getPrice1([H | T],Model) ->
        case proplists:get_value(model,H) of
            Model -> proplists:get_value(price,H);
            _ -> getPrice1(T, Model)
        end.
