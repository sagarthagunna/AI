% Facts
loves(john, mary).
loves(bob, mary).
loves(susan, mike).
loves(anna, mike).

% Rule for jealousy
jealous(X, Y) :-
    loves(X, Z),
    loves(Y, Z),
    X \= Y.
