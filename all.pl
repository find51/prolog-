fatherof(rasel, halima).
fatherof(rasel, sumon).
motherof(kutub, halima).
motherof(rikta, fahima).
motherof(sabina, fahima).
male(rasel).
male(kutub).
female(fahima).
female(halima).

% i. Is Rasel the father of Halima?
% Query: fatherof(rasel, halima).

% ii. Is Rikta the mother of Fahima?
% Query: motherof(rikta, fahima).

% iii. Is Hera a male?
% Query: male(hera).

% iv. Is Fahima a female?
% Query: female(fahima).


likes(sabbir, X) :- likes(X, football).
likes(sabbir, flower).
likes(sabbir, custard).
likes(sabbir, fruits).
likes(sakib, X) :- likes(sabbir, X).
likes(sakib, cricket).
likes(sakib, football).
likes(sakib, rugby).
likes(riad, football).
likes(riad, rugby).

% Rules
likes(sabbir, X) :- likes(X, football).  % Sabbir likes anyone who likes football.
likes(sakib, X) :- likes(sabbir, X).    % Sakib likes anything that Sabbir likes.

% Example Queries:
% i. Does Sabbir like Riad? -> likes(sabbir, riad). -> true
% ii. Does Sakib like custard? -> likes(sakib, custard). -> true
% iii. Does Sakib like rugby? -> likes(sakib, rugby). -> true



sum_array([],0).
sum_array([Head | Tail], S):-
    sum_array(Tail,TS),
    S is Head + TS.
% Example Query:
% Query: sum_array([1, 2, 3, 4], S).
% Expected Result: S = 10.


read_stream(Stream, Words) :-
    read_line_to_codes(Stream, Line),
    ( Line = end_of_file -> Words = []
    ;  split_string(Line, " \t\n","", WordList),
       read_stream(Stream, RestWords),
       append(WordList, RestWords, Words)).

count_words([],0).
count_words([_|Rest],Count) :-
    count_words(Rest,RestCount),
    Count is RestCount + 1.

count_words_in_file(File, WordCount):-
    open(File, read, Stream),          % Open the file as a stream
    read_stream(Stream, Words),        % Read the stream into a list of words
    close(Stream),                     % Close the stream
    count_words(Words, WordCount).

% ?- count_words_in_file('example.txt', WordCount).


% Define the addition predicate
add(X, Y, Z) :-
    Z is X + Y.

% Example Query:
% Query: add(5, 3, Result).
% Expected Result: Result = 8.



% Facts in the knowledge base
parent(john, alice).
parent(alice, bob).
parent(bob, charlie).

% A rule to find grandparent relationships
grandparent(X, Z) :-
    parent(X, Y),
    parent(Y, Z).

% Query Example:
% Query: grandparent(john, bob).
% Expected Result: false (This relationship does not exist in the knowledge base).

% Query: grandparent(john, charlie).
% Expected Result: true (This relationship exists in the knowledge base).





my_dict = {
    'name': 'Alice',
    'age': 30,
    'city': 'New York'
}

# Printing the dictionary
print("Original Dictionary:", my_dict)

# Accessing values
name = my_dict['name']
age = my_dict.get('age')
print("Name:", name)
print("Age:", age)

# Finding the length of the dictionary
length = len(my_dict)
print("Length of Dictionary:", length)

# Changing a dictionary value
my_dict['age'] = 31
print("Updated Dictionary:", my_dict)
