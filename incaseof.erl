-module(incaseof).
-compile(export_all).

insert(X,[]) -> % if we get an empty set, simply return set with X
    [X];
insert(X,Set) -> % if we get a real set, check if X is there before adding.
    case lists:member(X,Set) of
	true -> Set;
	false -> [X|Set]
    end.

beach(Temperature) ->
    case Temperature of
	{celsius, N} when N >= 20,
			  N =< 45 ->
	    'favorable';
	{kelvin, N} when N >= 293,
			 N =< 318 ->
	    'scientifically favorable';
	{fahrenheit, N} when N >= 68,
			     N =< 113 ->
	    'favorable in the US';
	_ ->
	    'avoid beach'
    end.
