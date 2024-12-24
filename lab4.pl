% Read the stream and split it into words
read_stream(Stream, Words) :-
    read_line_to_codes(Stream, Line),
    (Line = end_of_file -> Words = []
    ; split_string(Line, " \t\n", "", WordList),
      read_stream(Stream, RestWords),
      append(WordList, RestWords, Words)).

% Count the words in the list
count_words([], 0).
count_words([_ | Rest], Count) :-
    count_words(Rest, RestCount),
    Count is RestCount + 1.

% Main predicate to count words in a file
count_words_in_file(File, WordCount) :-
    open(File, read, Stream),
    read_stream(Stream, Words),
    close(Stream),
    count_words(Words, WordCount).
