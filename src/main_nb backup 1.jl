### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 5379f06e-a08c-11ee-17f0-a949aba4d9dc
begin
	using PlutoUI, CommonMark
	# using FileIO, ImageIO, ImageShow, ImageTransformations
	# using SymPy
	# using Plots, PlotThemes, LaTeXStrings
	using HypertextLiteral
	# using Colors
	using Random
	using LinearAlgebra
end

# ╔═╡ 204c851b-53c4-403b-91c0-e1be991a1b01
@htl("""
<style>
@import url("https://mmogib.github.io/math102/custom.css");

</style>
""")

# ╔═╡ 7cc524fe-f100-43f2-8588-68907624b64c
TableOfContents(title="Julia Workshop 2024")

# ╔═╡ 8382fb80-b9c1-4c50-baae-fe78f85d75e6
cm"""
<div class="img-container">

$(Resource("https://www.dropbox.com/scl/fi/1y142rbnz6mnzgjppnwb2/julia-svgrepo-com.svg?rlkey=g8mr16zw7r5e47odoqz0ky7wy&raw=1",:width=>200))

</div>"""

# ╔═╡ 84ff4a22-1278-4a9f-9651-9d6118cf4601
md"""
By:
1. Mohammed Alshahrani,
2. Norah Al-Muraysil
3. Hajar Alshaikh

Source: [Julia Learn](https://julialang.org/learning/)
"""

# ╔═╡ 82ec15b9-796f-4dea-8f44-068c1ca21fb6
md"""
# Introduction

## Audience of this Workshop
This workshop is targeting an audience familiar with programming that wants to transition to Julia and use Julia effectively.

> We prefer you bring your own __laptop__ with you to the workshop?
## Why Julia?
"""

# ╔═╡ d449016f-fb0e-4eda-a91a-bfab7810aae8
cm"""
In __February 14th, 2012__, the creators of Julia: Jeff Bezanson (computer scientist), Stefan Karpinski (computer scientist), Viral B. Shah (computer scientist) and Alan Edelman (mathematician) announced __Julia__ in a Blog Post titled __"Why We Created Julia"__.

They wrote
> We love all of these languages [Matlab, Lisp, Python, Ruby, Perl, Mathematica, R and C]; they are wonderful and powerful. For the work we do — scientific computing, machine learning, data mining, large-scale linear algebra, distributed and parallel computing — each one is perfect for some aspects of the work and terrible for others. Each one is a trade-off.
> 
> __We are greedy: we want more.__
> - We want a language that's open source, with a liberal license. 
> - We want the speed of C with the dynamism of Ruby. 
> - We want a language that's homoiconic, with true macros like Lisp, but with obvious, familiar mathematical notation like Matlab. 
> - We want something as usable for general programming as Python, as easy for statistics as R, as natural for string processing as Perl, as powerful for linear algebra as Matlab, as good at gluing programs together as the shell. 
> - Something that is dirt simple to learn, yet keeps the most serious hackers happy. 
> - We want it interactive and we want it compiled.

"""

# ╔═╡ b591dd48-13c6-461e-943a-629ce1243bda
md"""
## Julia Highlights
- __Julia is Fast__: Julia was designed for __[high performance](https://julialang.org/benchmarks/)__. Julia programs automatically compile to efficient native code via LLVM, and support multiple platforms.
- __Julia is Dynamic__: Julia is dynamically typed, feels like a scripting language, and has good support for interactive use, but can also optionally be separately compiled.
- __Julia is Reproducible__: Reproducible environments make it possible to recreate the same Julia environment every time, across platforms, with pre-built binaries.
- __Julia is Composable__: Julia uses multiple dispatch as a paradigm, making it easy to express many object-oriented and functional programming patterns. The talk on [the Unreasonable Effectiveness of Multiple Dispatch](https://www.youtube.com/watch?v=kc9HwsxE1OY) explains why it works so well.
- __Julia is General__: Julia provides asynchronous I/O, metaprogramming, debugging, logging, profiling, a package manager, and more. One can build entire Applications and Microservices in Julia.
- __Julia is Open source__: Julia is an open source project with over 1,000 contributors. It is made available under the MIT license. The source code is available on GitHub. 

"""

# ╔═╡ d6504d68-791a-420b-a555-15517e1e9c8c
md"""
## Advantages of Julia 
"""

# ╔═╡ 98ae785c-0f34-4bb3-9ce2-070fb47318fc
cm"""
<div style="display: flex;justify-content:flex-end;">

[See source](https://github.com/Datseris/whyjulia-manifesto?tab=readme-ov-file#detailed-advantages-of-julia)
</div>

1. __Julia solves the two language problem.__
2. __Julia occupies the "sweet spot" of high performance and simple code.__
<div class="img-container">

$(Resource("https://raw.githubusercontent.com/Datseris/whyjulia-manifesto/main/speed_vs_codesize_comparison.png"))
</div>

3. __Julia's syntax is intuitive and as close to math as possible.__
4. __Multiple dispatch.__
5. __Unprecedented code re-use and inter-package communication.__
6. __Julia is written in Julia.__
7. __Julia's package ecosystem is already top-of-the-class in some scientific disciplines.__
8. __Developer communities around seemingly every area of science.__
9. __Interoperability with other languages.__
10. __Exceptionally strong integrated package manager.__
11. __Welcoming and responsive community.__
12. __Many large-scale projects and organizations have already adopted Julia__
13. __Easy installs and pre-built binary dependencies.__

"""

# ╔═╡ d4ac9910-4179-4d98-b2e1-318d5d6bb7f9
md"""
## Wait a minute! why do you try so hard to convince people?
It should be obvious that I am not funded or affiliated by Julia in any way. I try to convice people to use Julia because 
> "I genuinly believe that Julia is the best programming language for Scientific computing and it can accelerate progress and increases openness in academia"

"""

# ╔═╡ bf29e1d2-783c-4a72-a0b0-b3d0251757b1
md"""
## Installing Julia
##### Option 1: For Windows 10 and 11 users:

1. Open the Microsoft Store and search for "Julia" in the search area.
2. Download the Julia app from the store. This will install both Julia and Juliaup simultaneously.
3.  Verify the installation:
   - Open a command prompt window and run the following command to verify that Julia and Juliaup installed correctly:
     ```
     julia --version
     ```
     ```
     juliaup --version
     ```
#### Option 2: For users with other operating systems:

1. Visit the [Julia Language website](https://julialang.org/downloads/).
2. Follow the instructions provided on the website to download and install Julia on your specific operating system

"""

# ╔═╡ 42966cad-9c79-4804-9727-5843d3e3126a
md"""
## Developing in Julia
- You can develop your Julia programs by typing directly in the REPL. Note that the history of everything you type in the REPL is stored, even across restarts. You can access this history using the up-arrow key, or by using ctrl-r for searching.
- If you want a more graphical environment that also saves your programs, you can use Julia from within your favorite text editor: Visual Studio Code, Vim, Emacs, IntelliJ IDEA. Minimally, a text editor like Vim or Notepad will allow you to create a document where you can write programs but without automatically adding a bunch of formatting information.
- To make coding easier, there are lots of “integrated development environments” (IDEs) out there that offer more than a simple text editor. These IDEs will allow you not only to write and store programs you’ve written, but also to run them, making it easier to test and experiment as you write. If you don’t yet have a favorite editor or IDE, we would suggest using [__VS code along with the Julia plugin__](https://www.julia-vscode.org/).
- [Pluto:](https://plutojl.org/ ) Simple, reactive programming environment for Julia
- Jupyter Notebook

"""

# ╔═╡ 2c9ef83e-b463-4ba0-a2e1-da198652c8d3
md"## Julia Basics"

# ╔═╡ a66f9df2-a058-45fc-89da-3892099649c5
md"""
### Basic syntax
#### Assignment

- You can assign anything to a variable binding. This includes functions, modules, data types, or whatever you can come up with.
"""

# ╔═╡ ae660ecd-936d-40ba-a670-efceb73951c5
# Variable names can include practically any Unicode character. Even using LaTeX syntax
σ = 5 # type \sigma and then tab!

# ╔═╡ 6ba63970-331d-4849-a97c-409c34949560
cm"- You can assign multiple variables to multiple values using commas."

# ╔═╡ b365be1a-613a-467a-8aa8-a7ab64dbb9f6
🐱, 😄, 😢 = 1, 0, -1
# to use emojis type \: then tab to show list of available emojis.

# ╔═╡ 7fa6d529-b108-4ff6-b174-f7fcc894f016
🐱 + 😢 == 😄
# legitimate code. Not good for readability though ;)

# ╔═╡ 321734c2-5478-4662-8b20-0dd2bcf6e052
md"- Strings are created between double quotes \" while the single quotes ' are used for characters only."

# ╔═╡ 68f4a8bf-b67e-4b55-8f5f-870d53f8f09e
س = "بسم الله"

# ╔═╡ 41f71cfc-1ead-49af-9d30-a70766fe8506
y = 'ض'

# ╔═╡ f4f55436-1707-48a2-8d94-a8e638d36c3b
ص=3


# ╔═╡ 6ce69319-6111-43df-91f1-eb1503807573
ص + 3

# ╔═╡ b02ddc65-6661-406c-9f35-48a935f7951a
md" -  Since assignment returns the value, by default this value is printed. This is AMAZING, but you can also silence printing by adding ; to the end of the expression:"

# ╔═╡ 931d45a6-8917-4426-8b1c-522ea21565ae
z = 4;

# ╔═╡ 76f4b128-0fa4-4e54-8ad4-56d38f8fbd0d
md"- you can interpolate any expression into a string using \$(expression)"

# ╔═╡ 29931025-7a79-403b-8710-03a8c65918d5
"The value of the crying face (🐱) is $(🐱)"

# ╔═╡ 9aaa0976-eca7-4388-abc3-7b1d82f072de
"You can do math inside a string: $(cos(π) + 2)"

# ╔═╡ 226e7748-0210-4e64-a83c-b5a02883480f
md"""
### Note on [Pluto](https://plutojl.org/)
Simple, reactive programming environment for Julia

__Workspace variables__
Pluto offers an environment where changed code takes effect instantly and where deleted code leaves no trace. Unlike Jupyter or Matlab, there is no mutable workspace, but rather, an important guarantee:

At any instant, the program state is completely described by the code you see.

No hidden state, no hidden bugs.

Pluto doesn't support multiple expressions per cell. This is a conscious choice - this restriction helps you write less buggy code once you get used to it. To fix the code, you can either split the above cell, or wrap it in a begin ... end block. Both work.
"""

# ╔═╡ 202634d4-c7d8-4145-a224-1ea1a8d9ea46
let 
	x = 3
	y = 2
end

# ╔═╡ cc479254-e2a2-4f8e-9f22-ab2c68fa5535
	x +2
	y + 20


# ╔═╡ f3fd60a7-bd31-4e81-b627-c0036a99b45d


# ╔═╡ 200db167-ed88-47f6-a865-cb6f344c94b1


# ╔═╡ bb674edd-3f56-4343-a1ad-939700d6e76f
md"""
### Math Operations
Basic math operators are +, -, *, / and ^ for power.
"""

# ╔═╡ cd9ae16e-1f7d-4d22-a35d-18138dce3d0a
begin
	a = 3
	b = a^2.1
	# Most julia operators have their = version, which updates something with its own value
	# a += 3
	# a -= 3
	# a *= 3
	# a /= 3
end

# ╔═╡ 157a518b-770e-49bb-a3c3-1353ebcaa762
#=╠═╡
let 
	# Literal numbers can multiply anything without having to put * inbetween, as long as the number is on the left side:
	5x - 12.24a * 1.2e-5x
end
  ╠═╡ =#

# ╔═╡ 794ab7fe-e163-446b-9df7-d848d9663864
md"""### Type Basics
Everything that exists in Julia has a certain Type. (e.g. numbers can be integers, floats, rationals). This "type system" is instrumental for the inner workings of Julia, and is mainly what enables Julia to have performance matching static languages like C.

The type system also enables Multiple Dispatch, one of Julia's greatest features, which we will cover in the second lecture.

To find the type of a thing in Julia you simply use __`typeof(thing)`__:

"""

# ╔═╡ 69a55856-d8a2-412e-bb36-d7a26fc6e4e0
let
	# Integers
	# Floats
	# Strings
	# Characters
	x = 1.5f0
	typeof(x)
	typemax(x)
	typemax(Int64)
	eps(1.)
end

# ╔═╡ 577dcac2-35ad-42e9-af63-d6087da44f96
md"""## Basic collection datastructures
- Index a collection with brakets `A[1]`.
- indexing in Julia starts from 1
### Tuples
__Tuples__ are immutable ordered collections of elements of any type. They are most useful when the elements are not of the same type with each other and are intended only for small collections.
"""

# ╔═╡ ebe9831d-a4a6-4f2e-9194-1d45461e6882
let
	mythings = ("blue", `🧁`, π, :math)
	mythings[4]
	# You can extract multiple values into variables from any collection using commas.
	mycolor, mycake,_, mysubject = mythings
	mycolor, mycake, mysubject
	# The type of the tuple is the type of its constituents.
	typeof(mythings)
end

# ╔═╡ 600a0d06-2eab-4fa2-b386-3fa6d8e9f4be
md"""
### Dictionaries
Dictionaries are unordered mutable collections of pairs key-value. They are intended for sets of relational data, and typically you want the data to be of the same type.
Syntax:

```julia
Dict(key1 => value1, key2 => value2, ...)
```
A good example of a dictionary is a contacts list, where we associate names with phone numbers.
"""

# ╔═╡ c253f54d-7640-4de8-98fe-fba5eee760b1
begin 
	myphonebook = Dict("Ali" => "860-2931", "Mohammed" => "860-7748")
	# myphonebook["Ali"]
	# New entries can be added to the above dictionary, because it is mutable
	myphonebook["Khalid"]="860-4415"
	myphonebook
	typeof(myphonebook)
end

# ╔═╡ 033ff597-58c0-4f6e-b53f-783fd3e28453
md"""
### Named tuples
These are exactly like tuples but also assign a name to each variable they contain. Hence, they are an immutable collection of ordered and named elements. They rest between the Tuple and Dict type in their use.

Their syntax is:
```julia
(key1 = val1, key2 = val2, ...)
```
For example:
"""

# ╔═╡ ee3df1c1-7460-4ebb-9392-3fbd5437ea89
let
	mythings = (color="blue", cake=`🧁`, number=π, subject=:math)
	mythings[4]
	mythings[:subject]
	mythings.subject
	
	# mycolor, mycake,_, mysubject = mythings
	# mycolor, mycake, mysubject
	# # The type of the tuple is the type of its constituents.
	# typeof(mythings)
end

# ╔═╡ d66e4de0-8af1-4329-b129-a356954336e2
md"""
### Arrays
The standard Julia Array is a __mutable and ordered collection of items of the same type__. The dimensionality of the Julia array is important. A __Matrix__ is an array of dimension 2. A __Vector__ is an array of dimension 1. The element type of what an array contains is irrelevant to its dimension!

i.e. a Vector of Vectors of Numbers and a Matrix of Numbers are two totally different things!

The syntax to make a vector is enclosing elements in brackets
"""

# ╔═╡ 4f01c0ca-8309-4662-9694-05d0b19a065a
let
	prime_numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 27]
	# typeof(prime_numbers)
	# prime_numbers[end]=29
	# push!(prime_numbers,31)
	pop!(prime_numbers);prime_numbers
	
end

# ╔═╡ 87da1539-34cf-4558-8faa-3fbf0fbdbe7e
let
	mixture = [1, 1, 2, 3, "Norah", "Ali"]
	typeof(mixture)
end

# ╔═╡ 6708768d-dd92-41ab-8f93-6437838b47a8
md"""
As mentioned, the type of the elements of an array must be the same. Yet above we mix numbers with strings! I wasn't lying though; the above vector is an unoptimized version that can hold any thing. You can see this in the type of the vector, `Vector{Any}`.

Arrays of other data structures, e.g. vectors or dictionaries, or anything, as well as multi-dimensional arrays are possible:

- If you want to make a matrix, two ways are the most common: (1) specify each entry one by one
"""

# ╔═╡ d53959da-286d-4482-8ea7-b8c8055e93c5
let 
	matrix = [1 2 3; # elements in same row separated by space
          4 5 6; # semicolon means "go to next row"
          7 8 9]
	typeof(matrix)
end

# ╔═╡ 9facd690-4dd2-45dc-9227-284a15b3b789
md"""
- or (2), you use a function that initializes a matrix. E.g. `rand(n, m)` will create an n×m matrix with uniformly random numbers
"""


# ╔═╡ 3ed6e1ce-cc74-4213-aba7-dc9747ab777c
let 
	R = rand(4,3)
	R[1,2]
	
end

# ╔═╡ b75a9f13-1e76-45e4-8fd5-590c4c5bd001
md"""
- Lastly, for multidimensional arrays, the : symbol is useful, which means to "select all elements in this dimension".
"""

# ╔═╡ c8d275c6-08e1-4653-8149-451bbc4b8204
let 
	R = rand(4,6)
	R[:,1] # it means to select the first column
end

# ╔═╡ 507c31f5-8b7f-4c2c-bd41-e0b7e9ab6a90
md"""
### Ranges
Ranges are useful shorthand notations that define a "vector" (one dimensional array) with equi-spaced entries. They are created with the following syntax:

```julia
start:stop # mainly for integers
start:step:stop
range(start, stop, length)
range(start, stop; step = ...)
```
"""

# ╔═╡ fc390bbe-7649-4eba-b2db-9f8a21c691de
let
	r = 0:0.1:5
	typeof(r)
end

# ╔═╡ f2794804-d49b-40c0-b4b0-5b8335bb00a4
md"""
- Ranges always include the first element and step until they do not exceed the ending element. If possible, they include the stop element (as above).
"""

# ╔═╡ 06a5c75b-e1c2-4ae6-93a1-fd8fb19f7e31
let
	r = 0:0.1:5
	r[end-2] # use `end` as index for the final element
	# r[2:10:end] |> collect
end

# ╔═╡ f995c0d7-7fc4-4cde-875b-1ebab746a928
md"""
- Ranges are not unique to numeric data, and can be used with anything that extends their interface, e.g.
"""

# ╔═╡ b0cf1936-82cf-44f0-9ebd-c1d2b9fa207e
let
	letterragnge = 'a':'z'
	letterragnge[2]
	# As ranges are printed in this short form, to see all their elements you can use collect, to transform the range into a Vector.
	collect(letterragnge)
end

# ╔═╡ 5f8a9545-a7e7-4516-99b5-59b6d8da58da
md"""
Ranges are cool because they do not store all elements in memory like Vectors. Instead they produce the elements on the fly when necessary, and therefore are in general preferred over Vectors if the data is equi-spaced.
- Lastly, ranges are typically used to index into arrays. One can type `A[1:3]` to get the first `3` elements of `A`, or `A[end-2:end]` to get the last three elements of `A`. If `A` is multidimensional, the same type of indexing can be done for any dimension:
"""


# ╔═╡ 92b0ae8d-4fa8-407c-abdd-7afc8ce3b38b
let 
	# rng = MersenneTwister(123)
	A = rand(0:9,4,4) # creates a random 4 x 4 matrix from the range given
	display(A)
	A[2:4,1]
end

# ╔═╡ b1fd1721-5160-40db-9cbf-a244122e28cc
md"""
## Iteration
Iteration in Julia is high-level. This means that not only it has an intuitive and simple syntax, but also iteration works with anything that can be iterated. Iteration can also be extended 
### `for` loops
A `for` loop iterates over a container and executes a piece of code, until the iteration has gone through all the elements of the container. The syntax for a for loop is
```julia
for *var(s)* in *loop iterable*
    *loop body*
end
```
you will notice that all Julia code-blocks end with end
"""

# ╔═╡ 8dbd2262-2923-4b01-9423-0d6875cc3ab4
for n in 1:5
    println(n)
end

# ╔═╡ 377841c4-acd1-4f2b-ae0d-56850ab095a7
md"""
- The nature of the iterating variable depends on what the iterating container has. For example, when iterating over a dictionary one iterates over pairs of key-value.
"""

# ╔═╡ 4f63ef53-3abd-46e6-95c9-857d1da6b071
for pair in myphonebook
	println(pair)
end

# ╔═╡ a4d67e94-3b95-4c45-acbc-fe9eb515405f
for (key,val) in myphonebook
	println("The number of $key is $val")
end

# ╔═╡ c0490f81-cc72-4314-9f1d-5c0e4d0c0052
md"""
- In the context of for loops, the enumerate iterator is often useful. It takes in an iterable and returns pairs of the index and the iterable value.
"""


# ╔═╡ 291f64a0-b7aa-4670-8068-34f57018d234
for (i, v) in enumerate(rand(3))
    println("value of index $i is ($v)")
end

# ╔═╡ e3d78be8-e854-4b21-b332-54d4e224565b
md"""
### command termination
Julia has a modern syntax parser that automatically understands when a command starts and ends. It does not require identation (like `Python`) or the `;` character (like `C`) to establish the end of a command. The following two are totally valid and syntactically identical Julia codes
"""

# ╔═╡ 0d95875e-a0e1-495c-a720-be7c3197c530
        for (key,
val) in
                myphonebook
  println(
"The number of $key is
$val"
        ) end
     

# ╔═╡ 320a9d54-0230-4489-828c-74a2693d2537
for (key, val) in myphonebook println("The number of $key is $val") end

# ╔═╡ 1af72821-a66e-4f47-9c51-be0f00b58de9
md"""
However, code readability is important so it is strongly recommended to properly ident your code even if it is not enforced by the language!
"""

# ╔═╡ 7473fb37-4170-4c86-ad5d-731ac79f8ccb
md"""
### `while` loops
A `while` loop executes a code block until a boolean condition check (that happens at the start of the block) becomes `false`. Then the loop terminates (without executing the block again). The syntax for a standard `while` loop is
```julia
while *condition*
    *loop body*
end
```
"""

# ╔═╡ 6c66af16-c3af-41f8-b402-ede02cd6885f
let 
	n = 0
	while n < 5
	    n += 1
	    println(n)
	end
end

# ╔═╡ 348d7d2b-e03e-45e9-a306-5be6b11d48cd
md"""
## Conditionals
Conditionals execute a specific code block depending on what is the outcome of a given boolean check. The `&`, `|` are the boolean `and`, `or` operators.

### `if` block
In Julia, the syntax
```julia
if *condition 1*
    *option 1*
elseif *condition 2*
    *option 2*
else
    *option 3*
end
```

evaluates the conditions sequentially and executes the code-block of the first true condition.
"""

# ╔═╡ 34d4e7ce-8d73-4c54-aa15-697e20e3d53d
let
	x, y = 5, 6
	if x > y
	    x
	else
	    y
	end
end

# ╔═╡ 37348552-aec0-4aae-b82e-857568d4e3d3
md"""
### Ternary operator
The ternary operator (named for having three arguments) is a convenience syntax for small `if` blocks with only two clauses.

Specifically, the syntax
```julia
condition ? if_true : if_false
```
is syntactically equivalent to
```julia
if condition
    if_true
else
    if_false
end
```
For example
"""

# ╔═╡ 89d48b3e-c0b1-46cc-86c5-28a4847127fe
5 == 5.0 ? "yes" : "no"

# ╔═╡ c72b5788-bf27-4149-8d03-c52172ee0d62
md"""
### `brea`k and `continue`
The keywords `continue` and `break` are often used with conditionals to skip an iteration or completely stop the iteration code block.


"""

# ╔═╡ 47aa28c6-bb56-4095-baff-67715564a3c0
let 
	N = 1:100
	for n in N
	    isodd(n) && continue
	    println(n)
	    n > 10 && break
	end
end

# ╔═╡ c8d9950c-a7ed-498f-887f-3b01081f69aa
md"""
## List comprehension
The list comprehension syntax
```julia
[expression(a) for a in collection if condition(a)]
```
is available as a convenience way to make a `Vector`. The `if part` is optional.

"""

# ╔═╡ 78353a10-e331-43b7-abef-17b9f3f1768f
[    a^2 for a in 1:10 if iseven(a)      ]

# ╔═╡ 9206fe69-65e7-4735-ae5d-31becff13f3e
md"""
## Functions
Functions are the bread and butter of Julia, which heavily supports functional programming.

### Function declaration
Functions are declared with two ways. First, the verbose
"""

# ╔═╡ 44c38a20-dd17-472b-b530-c0716ce43094
begin
	# First, the verbose
	function f1(x)
	    # function body
	    return x^2 # While `return` is not necessary, it is recommended for clarity
	end
	# Or, you can define functions with the short form (best used for functions that only take up a single line of code)
	f2(x) = x^2
	# Functions are called using their name and parenthesis () enclosing the calling arguments:
	f2(2)
end

# ╔═╡ cf01e24e-8478-48a0-94e6-06b2846da953
md"""
- Functions in Julia support optional positional arguments, as well as keyword arguments. The __positional__ arguments are always given by their order, while __keyword__ arguments are __always given by their keyword__. Keyword arguments are all the arguments defined in a function after the symbol ;. Example:
"""

# ╔═╡ 9aaea810-7a52-49a5-89b0-be1de5c4e454
begin
	function g(x, y = 5; z = 2, w = 1)
	    return x*z*y*w
	end
	g(5,4,w=3, z=1)
end

# ╔═╡ 9bccf535-3c46-4486-bcdc-0d9b2c46b146
md"""
### Passing by reference: mutating vs. non-mutating functions
You can divide Julia variables into two categories: 
- __Mutable__: meaning that the values of your data can be changed in-place, i.e. literally in the place in memory the variable is stored in the computer. 
- __Immutable__:  immutable data cannot be changed after creation, and thus the only way to change part of immutable data is to actually make a brand new immutable object from scratch. 

Use isimmutable(v) to check if value v is immutable or not.

For example, Vectors are mutable in Julia:
"""

# ╔═╡ 7f9c9e00-bf91-4993-bad4-43b59630f7d8
let 
	x = [5, 5, 5]
	x[1] = 6 # change first entry of x
	x
	y = (5, 5, 5)
	isimmutable(y)
	# y[1] = 6
end

# ╔═╡ 6baa0be2-55b4-4aa8-9c70-5c4b56db679d
md"""
- Julia __passes values by reference__. This means that if a mutable object is given to a function, and this object is mutated inside the function, the final result is kept at the passed object. E.g.:
"""

# ╔═╡ c61b301e-6f35-4cfd-b337-7219f71f2566
let 
	function add3!(x)
	    x[1] += 3
	    return x
	end
	
	x = [5, 5, 5]
	# y = (5, 5, 5)
	add3!(x)
	x
end

# ╔═╡ c12eed0b-1182-4c06-92ed-eff8aea456f4
md"""
- __By convention__, functions with name ending in ! alter their (mutable) arguments and functions lacking ! do not. Typically the first argument of a function that ends in ! is mutated.

For example, let's look at the difference between sort and sort!.
"""

# ╔═╡ 8fd21ed8-867a-498d-ad79-94c6aad7d249
let 
	v = [3, 5, 2]
	# sort(v),	v
	sort!(v), v
end

# ╔═╡ cdb77a95-5312-4839-bc59-8678a4f52320
md"""
### Functions as arguments
Functions, like literally anything else in Julia, are objects that can be passed around like any other value. Including giving them as arguments to other functions.

A typical application of this is with the `findall` and related functions, that find the indices of all elements in a collection that return `true` for a particular expression.


"""

# ╔═╡ 37b063e1-6313-4495-9214-535590ddd6c6
let 
	expression(x) = (x < 0.5) | (x > 1.5)
	x = 0:0.1:2
	valid_indices = findall(expression, x)
end

# ╔═╡ 0b1da978-87fe-481b-82ed-75048d658f21
md"""
## The help system
Typing ? followed by a function (or type) name will display its documentation string. Alternatively you can type @doc and then the function name.

For example
"""

# ╔═╡ d386b75a-d0ca-4445-8fd9-e2b5358beb23
# @doc findall

# ╔═╡ ef2f4782-bba4-4db0-85b1-70a9ad1fdef3
md"""
## Broadcasting

Broadcasting is a convenient syntax for applying any function over the elements of an iterable input. I.e., the result is a new iterable whose elements is the function application of the elements of the input.

Broadcasting is done via the simple syntax of adding a dot . before the parenthesis in the function call: `g.(x)`.



"""

# ╔═╡ fc3d73ff-dc8a-4315-85c3-a28c40148504
let 
	h(x, y = 1) = x + y
	x = [1,2,3]
	t = (1,2,3)
	m = I(3)
	h.(m,1)
end

# ╔═╡ 6e3fac2e-8f2b-45cb-891d-6134f2e25a16
md"""
## Plotting
"""

# ╔═╡ 207902a2-99e3-4e20-aa1c-16c860b3944c
md"""
## Exercises - basics
- Important note for all exercises: when an exercise says "use function function_name to do something", you need to first learn how to use the function. For this, you access the function's documentation string, using the help mode (type ? or @doc in the Julia console and then type the function name)!

### Babylonian square root
To get the square root of $y$ Babylonians used the algorithm 

$$x_{n+1}=\frac{1}{2}\left(x_n+\frac{y}{x_n}\right)$$

iteratively starting from some value $x_0$. Then $x_n\to \sqrt{y}$ as $n\to\infty$.

Implement this algorithm in a function `babylonian(y, ε, x0 = 1)` (default optional argument `x0`), that takes some convergence tolerance `ε` to compare with the built-in `sqrt(y)`. The function should return the steps it took to reach the square root value within given tolerance.


"""

# ╔═╡ 9f03c256-665a-4e25-a69a-d3dec38aee95
md"""
### Counting nucleotides
"""

# ╔═╡ 03133a31-8c8d-4e1b-b1c7-3151c56fe9b5
cm"""
Create a function that given a DNA strand (as a `String`, e.g. `"AGAGAGATCCCTTA"`) it counts how much of each nucleotide (A G T or C) is present in the strand and returns the result as a dictionary mapping the nucleotides to their counts. The function should throw an error (using the `error` function) if an invalid nucleotide is encountered. Test your result with `"ATATATAGGCCAX"` and `"ATATATAGGCCAA"`.

__Hint__: Strings are iterables! They iterate over the characters they contain.



"""

# ╔═╡ af2d07b5-0d00-4f74-b8e9-26af7a9a26b2
md"""
### Fibonacci numbers
"""

# ╔═╡ f8db3f22-8c10-437c-9cc8-6a1d9c7c37a6
cm"""
Using recursion (a function that calls itself) create a function that given an integer `n` it returns the `n-th` Fibonacci number. Apply it using map to the range 1:8 to get the result [1,1,2,3,5,8,13].
"""

# ╔═╡ 0b85fba2-ab57-413e-bce8-79040ccd6ff4
md"""
### Hamming distance
Create a function that calculates the Hamming distance of two equal DNA strands, given as strings. This distance is defined by counting (sequentially) the number of non-equal letters in the two strands, e.g. "ATA" and "ATC" have distance of 1, while "ATC" and "CAT" have distance of 3.

Hint: this exercise has a one-liner solution, using the zip and count functions.
"""

# ╔═╡ 1925f08b-948f-4bbb-a576-66c28c405763
md"""
- Plots
- User-defined types
- Linear Algebra & Differential Equations
- Numeical Methods
- Data Science
- Optimization
"""
# - Image Processing

# ╔═╡ 90efcaf0-75ce-4d20-b085-aa925ae05a0f
#=╠═╡
x = 4
  ╠═╡ =#

# ╔═╡ 6918661b-0faa-4b72-a9de-4972212fc298
# ╠═╡ disabled = true
#=╠═╡

x = 1
  ╠═╡ =#

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
CommonMark = "a80b9123-70ca-4bc0-993e-6e3bcb318db6"
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Random = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[compat]
CommonMark = "~0.8.12"
HypertextLiteral = "~0.9.5"
PlutoUI = "~0.7.54"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.9.4"
manifest_format = "2.0"
project_hash = "7612a359d7ad19d01725a6536d21fd3e16ea3a29"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "793501dcd3fa7ce8d375a2c878dca2296232686e"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.2"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.CommonMark]]
deps = ["Crayons", "JSON", "PrecompileTools", "URIs"]
git-tree-sha1 = "532c4185d3c9037c0237546d817858b23cf9e071"
uuid = "a80b9123-70ca-4bc0-993e-6e3bcb318db6"
version = "0.8.12"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+0"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "8d511d5b81240fc8e6802386302675bdf47737b9"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.4"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "d75853a0bdbfb1ac815478bacd89cd27b550ace6"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.3"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.4.0+0"

[[deps.LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2022.10.11"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.21+4"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "a935806434c9d4c506ba941871b327b96d41f2bf"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.9.2"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "bd7c69c7f7173097e7b5e1be07cee2b8b7447f51"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.54"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "03b4c25b43cb84cee5c90aa9b5ea0a78fd848d2f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "00805cd429dcb4870060ff49ef443486c262e38e"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA", "Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.9.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "Pkg", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "5.10.1+6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.Tricks]]
git-tree-sha1 = "eae1bb484cd63b36999ee58be2de6c178105112f"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.8"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+0"
"""

# ╔═╡ Cell order:
# ╟─204c851b-53c4-403b-91c0-e1be991a1b01
# ╟─7cc524fe-f100-43f2-8588-68907624b64c
# ╟─8382fb80-b9c1-4c50-baae-fe78f85d75e6
# ╟─84ff4a22-1278-4a9f-9651-9d6118cf4601
# ╟─82ec15b9-796f-4dea-8f44-068c1ca21fb6
# ╟─d449016f-fb0e-4eda-a91a-bfab7810aae8
# ╟─b591dd48-13c6-461e-943a-629ce1243bda
# ╟─d6504d68-791a-420b-a555-15517e1e9c8c
# ╟─98ae785c-0f34-4bb3-9ce2-070fb47318fc
# ╟─d4ac9910-4179-4d98-b2e1-318d5d6bb7f9
# ╟─bf29e1d2-783c-4a72-a0b0-b3d0251757b1
# ╟─42966cad-9c79-4804-9727-5843d3e3126a
# ╟─2c9ef83e-b463-4ba0-a2e1-da198652c8d3
# ╟─a66f9df2-a058-45fc-89da-3892099649c5
# ╠═6918661b-0faa-4b72-a9de-4972212fc298
# ╠═ae660ecd-936d-40ba-a670-efceb73951c5
# ╟─6ba63970-331d-4849-a97c-409c34949560
# ╠═b365be1a-613a-467a-8aa8-a7ab64dbb9f6
# ╠═7fa6d529-b108-4ff6-b174-f7fcc894f016
# ╠═321734c2-5478-4662-8b20-0dd2bcf6e052
# ╠═68f4a8bf-b67e-4b55-8f5f-870d53f8f09e
# ╠═41f71cfc-1ead-49af-9d30-a70766fe8506
# ╠═f4f55436-1707-48a2-8d94-a8e638d36c3b
# ╠═6ce69319-6111-43df-91f1-eb1503807573
# ╟─b02ddc65-6661-406c-9f35-48a935f7951a
# ╠═931d45a6-8917-4426-8b1c-522ea21565ae
# ╟─76f4b128-0fa4-4e54-8ad4-56d38f8fbd0d
# ╠═29931025-7a79-403b-8710-03a8c65918d5
# ╠═9aaa0976-eca7-4388-abc3-7b1d82f072de
# ╟─226e7748-0210-4e64-a83c-b5a02883480f
# ╠═90efcaf0-75ce-4d20-b085-aa925ae05a0f
# ╠═202634d4-c7d8-4145-a224-1ea1a8d9ea46
# ╠═cc479254-e2a2-4f8e-9f22-ab2c68fa5535
# ╠═f3fd60a7-bd31-4e81-b627-c0036a99b45d
# ╠═200db167-ed88-47f6-a865-cb6f344c94b1
# ╟─bb674edd-3f56-4343-a1ad-939700d6e76f
# ╠═cd9ae16e-1f7d-4d22-a35d-18138dce3d0a
# ╠═157a518b-770e-49bb-a3c3-1353ebcaa762
# ╟─794ab7fe-e163-446b-9df7-d848d9663864
# ╠═69a55856-d8a2-412e-bb36-d7a26fc6e4e0
# ╠═577dcac2-35ad-42e9-af63-d6087da44f96
# ╠═ebe9831d-a4a6-4f2e-9194-1d45461e6882
# ╟─600a0d06-2eab-4fa2-b386-3fa6d8e9f4be
# ╠═c253f54d-7640-4de8-98fe-fba5eee760b1
# ╟─033ff597-58c0-4f6e-b53f-783fd3e28453
# ╠═ee3df1c1-7460-4ebb-9392-3fbd5437ea89
# ╟─d66e4de0-8af1-4329-b129-a356954336e2
# ╠═4f01c0ca-8309-4662-9694-05d0b19a065a
# ╠═87da1539-34cf-4558-8faa-3fbf0fbdbe7e
# ╠═6708768d-dd92-41ab-8f93-6437838b47a8
# ╠═d53959da-286d-4482-8ea7-b8c8055e93c5
# ╠═9facd690-4dd2-45dc-9227-284a15b3b789
# ╠═3ed6e1ce-cc74-4213-aba7-dc9747ab777c
# ╠═b75a9f13-1e76-45e4-8fd5-590c4c5bd001
# ╠═c8d275c6-08e1-4653-8149-451bbc4b8204
# ╟─507c31f5-8b7f-4c2c-bd41-e0b7e9ab6a90
# ╠═fc390bbe-7649-4eba-b2db-9f8a21c691de
# ╟─f2794804-d49b-40c0-b4b0-5b8335bb00a4
# ╠═06a5c75b-e1c2-4ae6-93a1-fd8fb19f7e31
# ╟─f995c0d7-7fc4-4cde-875b-1ebab746a928
# ╠═b0cf1936-82cf-44f0-9ebd-c1d2b9fa207e
# ╟─5f8a9545-a7e7-4516-99b5-59b6d8da58da
# ╠═92b0ae8d-4fa8-407c-abdd-7afc8ce3b38b
# ╠═b1fd1721-5160-40db-9cbf-a244122e28cc
# ╠═8dbd2262-2923-4b01-9423-0d6875cc3ab4
# ╟─377841c4-acd1-4f2b-ae0d-56850ab095a7
# ╠═4f63ef53-3abd-46e6-95c9-857d1da6b071
# ╠═a4d67e94-3b95-4c45-acbc-fe9eb515405f
# ╟─c0490f81-cc72-4314-9f1d-5c0e4d0c0052
# ╠═291f64a0-b7aa-4670-8068-34f57018d234
# ╟─e3d78be8-e854-4b21-b332-54d4e224565b
# ╠═0d95875e-a0e1-495c-a720-be7c3197c530
# ╠═320a9d54-0230-4489-828c-74a2693d2537
# ╟─1af72821-a66e-4f47-9c51-be0f00b58de9
# ╠═7473fb37-4170-4c86-ad5d-731ac79f8ccb
# ╠═6c66af16-c3af-41f8-b402-ede02cd6885f
# ╠═348d7d2b-e03e-45e9-a306-5be6b11d48cd
# ╠═34d4e7ce-8d73-4c54-aa15-697e20e3d53d
# ╟─37348552-aec0-4aae-b82e-857568d4e3d3
# ╠═89d48b3e-c0b1-46cc-86c5-28a4847127fe
# ╟─c72b5788-bf27-4149-8d03-c52172ee0d62
# ╠═47aa28c6-bb56-4095-baff-67715564a3c0
# ╠═c8d9950c-a7ed-498f-887f-3b01081f69aa
# ╠═78353a10-e331-43b7-abef-17b9f3f1768f
# ╟─9206fe69-65e7-4735-ae5d-31becff13f3e
# ╠═44c38a20-dd17-472b-b530-c0716ce43094
# ╠═cf01e24e-8478-48a0-94e6-06b2846da953
# ╠═9aaea810-7a52-49a5-89b0-be1de5c4e454
# ╟─9bccf535-3c46-4486-bcdc-0d9b2c46b146
# ╠═7f9c9e00-bf91-4993-bad4-43b59630f7d8
# ╟─6baa0be2-55b4-4aa8-9c70-5c4b56db679d
# ╠═c61b301e-6f35-4cfd-b337-7219f71f2566
# ╟─c12eed0b-1182-4c06-92ed-eff8aea456f4
# ╠═8fd21ed8-867a-498d-ad79-94c6aad7d249
# ╟─cdb77a95-5312-4839-bc59-8678a4f52320
# ╠═37b063e1-6313-4495-9214-535590ddd6c6
# ╟─0b1da978-87fe-481b-82ed-75048d658f21
# ╠═d386b75a-d0ca-4445-8fd9-e2b5358beb23
# ╟─ef2f4782-bba4-4db0-85b1-70a9ad1fdef3
# ╠═fc3d73ff-dc8a-4315-85c3-a28c40148504
# ╟─6e3fac2e-8f2b-45cb-891d-6134f2e25a16
# ╟─207902a2-99e3-4e20-aa1c-16c860b3944c
# ╟─9f03c256-665a-4e25-a69a-d3dec38aee95
# ╟─03133a31-8c8d-4e1b-b1c7-3151c56fe9b5
# ╟─af2d07b5-0d00-4f74-b8e9-26af7a9a26b2
# ╟─f8db3f22-8c10-437c-9cc8-6a1d9c7c37a6
# ╟─0b85fba2-ab57-413e-bce8-79040ccd6ff4
# ╟─1925f08b-948f-4bbb-a576-66c28c405763
# ╠═5379f06e-a08c-11ee-17f0-a949aba4d9dc
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
