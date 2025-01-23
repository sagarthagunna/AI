% Facts (Example Family Structure)
male(john).
male(mike).
male(rob).
female(mary).
female(susan).
female(anna).

% Relationships
sibling(mary, susan).
sibling(john, mike).
married(john, mary).
married(mike, anna).

% Rules

% Brother-in-law Rule
% Case 1: X is the husband of Y's sibling
brother_in_law(X, Y) :-
    male(X),
    married(X, Z),
    sibling(Z, Y).

% Case 2: X is the sibling of Y's spouse
brother_in_law(X, Y) :-
    male(X),
    sibling(X, Z),
    married(Z, Y).

% Sister-in-law Rule
% Case 1: X is the wife of Y's sibling
sister_in_law(X, Y) :-
    female(X),
    married(X, Z),
    sibling(Z, Y).

% Case 2: X is the sibling of Y's spouse
sister_in_law(X, Y) :-
    female(X),
    sibling(X, Z),
    married(Z, Y).

