% Lab 7 : Shopping Program
% Run the program by typing: start.

% Begin with a basket containing five items.
start :-
    shopping([coffee, milk, chocolate, apple, juice]).

% Show the menu and read the user's choice.
shopping(Basket) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. Display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. Exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    handle_choice(Choice, Basket).

% Display every item, then return to the menu.
handle_choice(d, Basket) :-
    !,
    display_items(Basket),
    shopping(Basket).

% Add an item to the basket, then return to the menu.
handle_choice(a, Basket) :-
    !,
    write('Enter the item you want to add: '),
    read(Item),
    NewBasket = [Item|Basket],
    writeln('The item has been added.'),
    shopping(NewBasket).

% Exit the program.
handle_choice(e, _) :-
    !,
    writeln('Goodbye!').

% Handle an invalid choice and show the menu again.
handle_choice(_, Basket) :-
    writeln('Invalid choice. Please try again.'),
    shopping(Basket).

% Base case: stop when the list is empty.
display_items([]).

% Recursive case: display the head, then the tail.
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).
