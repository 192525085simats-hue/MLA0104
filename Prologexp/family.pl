male(john).
male(paul).
male(david).

female(mary).
female(lisa).
female(anna).

parent(john,paul).
parent(mary,paul).

parent(john,lisa).
parent(mary,lisa).

parent(paul,david).
parent(anna,david).


father(X,Y) :-
    parent(X,Y),
    male(X).


mother(X,Y) :-
    parent(X,Y),
    female(X).


grandparent(X,Y) :-
    parent(X,Z),
    parent(Z,Y).


sibling(X,Y) :-
    parent(P,X),
    parent(P,Y),
    X \= Y.