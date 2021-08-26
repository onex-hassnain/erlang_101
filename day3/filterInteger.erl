-module(filterInteger).
-export([filterList/2]).

% fun1(Value) -> 
%     (Value < 16) and (Value > 0).
% listFilter(Value, Integer)-> Value <Integer.

filterList(List,Integer)->
    [Value || Value <- List ,Value =< Integer].

