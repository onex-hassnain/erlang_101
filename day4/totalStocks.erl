-module(totalStocks).
-export([totalStocks/1]).

totalStocks(Stocks) ->
    totalStocks(Stocks,0).

totalStocks([],TotalSum)->TotalSum;
totalStocks([H | T],TotalSum) ->
    Price= list_to_integer(proplists:get_value(price,H)),
    Number = list_to_integer(proplists:get_value(instock,H)),
    totalStocks(T,TotalSum + Price*Number).