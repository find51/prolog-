% Define the likes relationships
likes(sakib, cricket).
likes(sakib, football).
likes(sakib, rugby).
likes(riad, football).
likes(riad, rugby).
likes(sabbir, flower).
likes(sabbir, custard).
likes(sabbir, fruits).

% Rule 1: Sabbir likes anyone who likes football
likes(sabbir, X) :- likes(X, football).

% Rule 2: Sakib likes anything that Sabbir likes
likes(sakib, Y) :- likes(sabbir, Y).
