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
