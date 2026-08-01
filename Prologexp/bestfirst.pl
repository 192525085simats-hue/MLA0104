edge(a,b,4).
edge(a,c,2).
edge(b,d,5).
edge(c,d,1).
edge(c,e,3).
edge(d,f,2).
edge(e,f,4).


heuristic(a,6).
heuristic(b,4).
heuristic(c,3).
heuristic(d,2).
heuristic(e,1).
heuristic(f,0).


best_first(Start,Goal) :-
    search([Start],Goal).


search([Goal|_],Goal) :-
    write('Goal reached: '),
    write(Goal).


search([Current|Rest],Goal) :-
    findall(
        Next,
        edge(Current,Next,_),
        Children
    ),
    append(Rest,Children,NewList),
    sort_by_heuristic(NewList,Sorted),
    search(Sorted,Goal).


sort_by_heuristic(List,Sorted) :-
    predsort(compare_nodes,List,Sorted).


compare_nodes(Order,A,B) :-
    heuristic(A,HA),
    heuristic(B,HB),
    compare(Order,HA,HB).