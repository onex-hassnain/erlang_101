-module(countdown).
-export([countdown/1]).

countdown(From) when From > 0 ->
    io:format("Calling ~w! ~n",[From]),
    countdown(From-1);
countdown(From) ->
    io:format("blastoff! ~w! ~n", [From]).

% -module(count).
% -export([countdown/1]).

% countdown(From) when From > 0 ->
%     io:format("~w!~n", [From]),
%     countdown(From-1);
% % countdown(From)->
%     io:format("blastoff!~n").