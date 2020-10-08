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

## alias, require, and import
URL: https://elixir-lang.org/getting-started/alias-require-and-import.html

All 3 are **lexically scoped** and can be used inside functions.

From the `require` section:

> Elixir provides macros as a mechanism for meta-programming (writing code that generates code). Macros are expanded at compile time.
> 
> Public functions in modules are globally available, but in order to use macros, you need to opt-in by requiring the module they are defined in.

`use` is different than the other 3 above because it allows the module you're `use`-ing to inject _any_ code into the current module (this feels more like a gem with its own dependencies vs. the other 3 above where you don't _always_ know up front what you'll be getting along with the main gem that you want).

This feels useful to remember (I'm thinking in terms of code forensics): 

> **Note:** in Elixir, you don’t have to define the Foo module before being able to define the Foo.Bar module, as the language translates all module names to atoms. You can define arbitrarily-nested modules without defining any module in the chain (e.g., Foo.Bar.Baz without defining Foo or Foo.Bar first).

That is to say: I shouldn't rely on the assumption that seeing a nested module means there will be fully-defined parent modules. 

Being able to alias, require, and import multiple modules at once--the look of it, at least--reminds me of destructuring in Javascript:

```elixir
alias MyApp.{Coffee, Tea, Soda}
```

## Module attributes

…started to read this, but it's unfamiliar in that I've only seen the `@moduledoc` and `@doc` attributes (which I should use more often!), so I'm not spending much time here. 

## Structs
URL: https://elixir-lang.org/getting-started/structs.html

> Structs take the name of the module they're defined in. 

Ahh, so: `%Coffee{}`, struct; `%{}`, map. Strictly-speaking. 

But also: structs are _bare_ maps underneath but with a special field whose value is the name of the struct. 

```
iex> is_map(john)
true
iex> john.__struct__
User
```

The bare is important here because "none of the protocols implemented for maps are available for structs. For example, you can neither enumerate nor access a struct… However, since structs are just maps, they work with the functions from the Map module"

## Comprehensions
URL: https://elixir-lang.org/getting-started/comprehensions.html

> In the examples above, all the comprehensions returned lists as their result. However, the result of a comprehension can be inserted into different data structures by passing the `:into` option to the comprehension.

```
iex(1)> stream = IO.stream(:stdio, :line)
%IO.Stream{device: :standard_io, line_or_bytes: :line, raw: false}
iex(2)> for line <- stream, into: stream do
...(2)>   String.upcase(line) <> "\n"
...(2)> end
To be or not to be: that is the question!
TO BE OR NOT TO BE: THAT IS THE QUESTION!
```