-module(boolean).
-export([b_not/1,b_and/2,b_or/2,b_nand/2]).

b_not(Value) -> not Value.
b_and(Value1,Value2) -> Value1 and Value2.
b_or(Value1,Value2) -> Value1 or Value2.
b_nand(Value1,Value2) -> b_not(b_and(Value1, Value2)).
