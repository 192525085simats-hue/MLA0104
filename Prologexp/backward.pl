bird(tweety).

has_wings(tweety).

can_fly(X) :-
    bird(X),
    has_wings(X).

animal(X) :-
    bird(X).