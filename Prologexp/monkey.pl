
id="monkey.pl"
state(atdoor, onfloor, hasnot).

% Monkey moves towards the box
move(state(atdoor,onfloor,hasnot),
     state(middle,onfloor,hasnot)).

% Monkey pushes box to middle
push_box(state(middle,onfloor,hasnot),
         state(middle,onbox,hasnot)).

% Monkey climbs on box
climb(state(middle,onbox,hasnot),
      state(middle,onbox,hasnot)).

% Monkey gets banana
get_banana(state(middle,onbox,hasnot),
           state(middle,onbox,has)).


monkey_banana :-
    state(atdoor,onfloor,hasnot),
    move(S1,S2),
    push_box(S2,S3),
    climb(S3,S4),
    get_banana(S4,_),
    write('Monkey got the banana!').