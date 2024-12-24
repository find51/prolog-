% Facts in the knowledge base
parent(john, alice).
parent(alice, bob).
parent(bob, charlie).

% A rule to find grandparent relationships
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).
