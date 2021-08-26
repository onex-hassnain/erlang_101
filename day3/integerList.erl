-module(integerList).
-export([listOfIntegers/2]).

% listOfIntegers(M,N) when M < N -1->
%     io:format("The required no is : ~p ~n",[M+1]),
%     listOfIntegers(M+1,N).
listOfIntegers(N,M) ->
    listOfIntegers(N,M,[]).

listOfIntegers(N,M,List) when N < M ->
    %lists:append(List,N),
    %io:format("~w ~n",[List]),
    listOfIntegers(N+1,M,lists:append(List,[N]));
listOfIntegers(N,M,List) when N==M ->
    List.
