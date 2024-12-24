% Base case: Sum of an empty list is 0.
sum_list([], 0).

% Recursive rule: Sum of a non-empty list.
sum_list([Head | Tail], Sum) :-
    sum_list(Tail, TailSum),
    Sum is Head + TailSum.

