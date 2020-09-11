# Elixir introduction
URL: https://elixir-lang.org/getting-started/introduction.html

## Basic types

### Anonymous functions
URL: https://elixir-lang.org/getting-started/basic-types.html#anonymous-functions

It's likely I'm getting caught up in the weeks, _however_, this strikes
me as a useful note, so I'm saving it:

> Parenthesised arguments after the anonymous function indicate that we want the function to be evaluated, not just its definition returned. Note that a dot (.) between the variable and parentheses is required to invoke an anonymous function. The dot ensures there is no ambiguity between calling the anonymous function matched to a variable add and a named function add/2.

### (Linked) Lists
URL: https://elixir-lang.org/getting-started/basic-types.html#linked-lists


> List operators never modify the existing list. Concatenating to or removing elements from a list returns a new list. We say that Elixir data structures are immutable. One advantage of immutability is that it leads to clearer code. You can freely pass the data around with the guarantee no one will mutate it in memory - only transform it.

The above is--so far--one of the things I like best about Elixir. I 
suppose at some point I'll find it frustrating, but so far it's nice.

----- 

Maybe this comes down to not having languages like Erlang already in my
background, but the whole thing where a list (`[ ]`) of plain ol'
numbers is returned as a word (well, a list of characters): trips. me.
out.

**Reminder:** Single quotes are charlists, double quotes are strings.


