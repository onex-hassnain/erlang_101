-module(hummingDistance).
-export([humDistance/2]).


humDistance(List1,List2) -> humDistance(List1,List2,0).

humDistance([],[],Distance) -> Distance;

humDistance(List1,List2,Distance) ->
    [H1 | T1] = List1,
    [H2 | T2] = List2,
    % io:format("In the false loop ~w ~w ~n",[H1,H2]),
    if
        H1 /= H2  -> humDistance(T1,T2,Distance +1);
        % io:format("In the true loop");
    true -> 
        humDistance(T1,T2,Distance)
    
    end.

