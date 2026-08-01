fact(sunny).
fact(warm).


rule(can_swim) :-
    fact(warm),
    fact(sunny).

rule(go_outside) :-
    fact(sunny).


forward_chain(Result) :-
    rule(Result).