sum_array([],0).
sum_array([Head | Tail], S):-
    sum_array(Tail,TS),
    S is Head + TS.
