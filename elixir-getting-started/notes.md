# Elixir introduction
URL: https://elixir-lang.org/getting-started/introduction.html

## Notes

Skipping sections 11, 15, 22, and 23 on the advice of Billy.

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

Ooh, the above gets a bit more explanation in "Unicode and Code Points"   
https://elixir-lang.org/getting-started/binaries-strings-and-char-lists.html#unicode-and-code-points

## Binaries, strings, and charlists
URL: https://elixir-lang.org/getting-started/binaries-strings-and-char-lists.html

Honestly, the [Bitstrings](https://elixir-lang.org/getting-started/binaries-strings-and-char-lists.html#bitstrings)
and [Binaries](https://elixir-lang.org/getting-started/binaries-strings-and-char-lists.html#binaries) 
sections make my head fizz a little bit. 


I think normally I would twist myself up into a bit of a knot to
_really_ understand it (well, to try to, at least), but instead
of heading down that road, I'm just reading through the sections
and moving forward on to charlists.

I haven't had to fuss with bitstrings _or_ binaries, so far, and
I think that based on where I'd like to get w/r/t my ability to 
write any Elixir (Phoenix, LiveView) I don't need to understand
them backwards and fowards.

## Keyword lists and maps
URL: https://elixir-lang.org/getting-started/keywords-and-maps.html

>  The longer the list, the longer it will take to find a key, to count the number of items, and so on. For this reason, keyword lists are used in Elixir mainly for passing optional values. If you need to store many items or guarantee one-key associates with at maximum one-value, you should use maps instead.

## Modules and functions
URL https://elixir-lang.org/getting-started/modules-and-functions.html

Created (math.ex), but the end of the **Scripted mode** section recommends
writing further example code into `exs` files (so that no bytecode file
is created).

## Recursion
URL: https://elixir-lang.org/getting-started/recursion.html

### Reduce and map algorithms
URL: https://elixir-lang.org/getting-started/recursion.html#reduce-and-map-algorithms

Okay, so the `sum_list` example: I get that. Took me a hot a second, but
I do get it. The `double_each` one, though... I mean, I guess I can _see_
what it's doing, but it makes way less sense to my brain than the
`Enum.map` version below it. 

```
iex> Enum.map([1, 2, 3], fn(x) -> x * 2 end)
[2, 4, 6]
```

Way more sensible. Oh and I'm starting to grok the capture syntax a bit
better. There was an example a section or two ago that really helped it
click and this restatement of the map with it is also useful:

```
iex> Enum.map([1, 2, 3], &(&1 * 2))
[2, 4, 6]
```

Where the `&1` is the first argument, the thing you're doing something to / with.

## Enumerables and Streams
URL: https://elixir-lang.org/getting-started/enumerables-and-streams.html

Hmm. The explanation of the difference between eager and lazy operations
isn't... great? Or anyway I don't _really_ understand the examples given.
That's a little frustrating, but instead of trying to force my brain to 
grok it, I'm going to take this advice:

> ...focus on the Enum module first and only move to Stream for the particular scenarios where laziness is required, to either deal with slow resources or large, possibly infinite, collections.

and move on!

