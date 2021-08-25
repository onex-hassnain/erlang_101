-module(listSum).
-export([sumOfList/1]).

sumOfList([]) -> 0;
sumOfList(List) -> sumOfList(List,0).

sumOfList([],Sum) -> Sum;
sumOfList([Head | Tail],Sum) -> sumOfList(Tail,Head+Sum).