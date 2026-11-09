% Lab 7: Lists (Part II)
% Task 1: Delete every occurrence of an element from a list.

% Base case: the empty list has nothing to delete.
deleteElement(_, [], []).

% If the head matches X, skip it and continue with the tail.
deleteElement(X, [X|Tail], Result) :-
    deleteElement(X, Tail, Result).

% Otherwise, keep the head and continue with the tail.
deleteElement(X, [Head|Tail], [Head|Result]) :-
    X \= Head,
    deleteElement(X, Tail, Result).

% Task 2: Add an element at the end of a list.

% Base case: adding X to an empty list produces [X].
add_at_the_end(X, [], [X]).

% Recursive case: keep the head and add X at the end of the tail.
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).
