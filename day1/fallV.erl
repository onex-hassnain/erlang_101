-module(fallV).
-export([fall_velocity/1, mps_kph/1]).

fall_velocity(Distance) when Distance > 0 ->
    math:sqrt(2*Distance *9.8).