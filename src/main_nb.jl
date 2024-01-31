### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 5379f06e-a08c-11ee-17f0-a949aba4d9dc
begin
	using PlutoUI, CommonMark
	# using FileIO, ImageIO, ImageShow, ImageTransformations
	# using SymPy
	using Plots, PlotThemes, LaTeXStrings
	using Latexify
	using GraphRecipes
	using Graphs
	using HypertextLiteral
	# using Colors
	using Random
	using LinearAlgebra
	using DifferentialEquations
	using Optimization, OptimizationOptimJL, OptimizationBBO
	# using OptimizationMOI, Ipopt
	using ForwardDiff
	using LinearSolve
	using NonlinearSolve
	using Symbolics
	using SymbolicUtils
	using DataFrames
	using CSV
	using Downloads
	using Dates
	using Statistics
	
# 	import Pkg
# Pkg.activate(@__DIR__)
# Pkg.status()
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

# ╔═╡ 68f4a8bf-b67e-4b55-8f5f-870d53f8f09e
س = "بسم الله"

# ╔═╡ 41f71cfc-1ead-49af-9d30-a70766fe8506
y = 'ض'

# ╔═╡ f4f55436-1707-48a2-8d94-a8e638d36c3b
ص=3


# ╔═╡ 6ce69319-6111-43df-91f1-eb1503807573
ص + 3

# ╔═╡ 931d45a6-8917-4426-8b1c-522ea21565ae
z = 4;

# ╔═╡ 29931025-7a79-403b-8710-03a8c65918d5
"The value of the cat (🐱) is $(🐱)"

# ╔═╡ 9aaa0976-eca7-4388-abc3-7b1d82f072de
"You can do math inside a string: $(cos(π) + 2)"

# ╔═╡ 90efcaf0-75ce-4d20-b085-aa925ae05a0f
x = 4

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
let 
	# Literal numbers can multiply anything without having to put * inbetween, as long as the number is on the left side:
	5x - 12.24a * 1.2e-5x
end

# ╔═╡ 69a55856-d8a2-412e-bb36-d7a26fc6e4e0
let
	# Integers
	# Floats
	# Strings
	# Characters
	x = 1.5f0
	# typeof(x)
	# y = Float32(1)
	# typeof(y)
	# typemax(x)
	# typemax(Int64)
	# eps(1.)
end

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

# ╔═╡ c253f54d-7640-4de8-98fe-fba5eee760b1
begin 
	myphonebook = Dict("Ali" => "860-2931", "Mohammed" => "860-7748")
	# myphonebook["Ali"]
	# New entries can be added to the above dictionary, because it is mutable
	myphonebook["Khalid"]="860-4415"
	myphonebook
	typeof(myphonebook)
end

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

# ╔═╡ d53959da-286d-4482-8ea7-b8c8055e93c5
let 
	matrix = [1 2 3; # elements in same row separated by space
          4 5 6; # semicolon means "go to next row"
          7 8 9]
	typeof(matrix)
end

# ╔═╡ 3ed6e1ce-cc74-4213-aba7-dc9747ab777c
let 
	R = rand(4,3)
	R[1,2]
	
end

# ╔═╡ c8d275c6-08e1-4653-8149-451bbc4b8204
let 
	R = rand(4,6)
	R[:,1] # it means to select the first column
end

# ╔═╡ fc390bbe-7649-4eba-b2db-9f8a21c691de
let
	r = 0:0.1:5
	typeof(r)
end

# ╔═╡ 06a5c75b-e1c2-4ae6-93a1-fd8fb19f7e31
let
	r = 0:0.1:5
	r[end-2] # use `end` as index for the final element
	# r[2:10:end] |> collect
end

# ╔═╡ b0cf1936-82cf-44f0-9ebd-c1d2b9fa207e
let
	letterragnge = 'a':'z'
	letterragnge[2]
	# As ranges are printed in this short form, to see all their elements you can use collect, to transform the range into a Vector.
	collect(letterragnge)
end

# ╔═╡ 92b0ae8d-4fa8-407c-abdd-7afc8ce3b38b
let 
	# rng = MersenneTwister(123)
	A = rand(0:9,4,4) # creates a random 4 x 4 matrix from the range given
	display(A)
	A[2:4,1]
end

# ╔═╡ 8dbd2262-2923-4b01-9423-0d6875cc3ab4
for n in 1:5
    println(n)
end

# ╔═╡ 4f63ef53-3abd-46e6-95c9-857d1da6b071
for pair in myphonebook
	println(pair)
end

# ╔═╡ a4d67e94-3b95-4c45-acbc-fe9eb515405f
for (key,val) in myphonebook
	println("The number of $key is $val")
end

# ╔═╡ 291f64a0-b7aa-4670-8068-34f57018d234
for (i, v) in enumerate(rand(3))
    println("value of index $i is ($v)")
end

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

# ╔═╡ 6c66af16-c3af-41f8-b402-ede02cd6885f
let 
	n = 0
	while n < 5
	    n += 1
	    println(n)
	end
end

# ╔═╡ 34d4e7ce-8d73-4c54-aa15-697e20e3d53d
let
	x, y = 5, 6
	if x > y
	    x
	else
	    y
	end
end

# ╔═╡ 89d48b3e-c0b1-46cc-86c5-28a4847127fe
5 == 5.0 ? "yes" : "no"

# ╔═╡ 47aa28c6-bb56-4095-baff-67715564a3c0
let 
	N = 1:100
	for n in N
	    isodd(n) && continue
	    println(n)
	    n > 10 && break
	end
end

# ╔═╡ 78353a10-e331-43b7-abef-17b9f3f1768f
[    a^2 for a in 1:10 if iseven(a)      ]

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

# ╔═╡ 9aaea810-7a52-49a5-89b0-be1de5c4e454
let
	function g(x, y = 5; z = 2, w = 1)
	    return x*z*y*w
	end
	g(5,4,w=3, z=1)
end

# ╔═╡ 7f9c9e00-bf91-4993-bad4-43b59630f7d8
let 
	x = [5, 5, 5]
	x[1] = 6 # change first entry of x
	x
	y = (5, 5, 5)
	isimmutable(y)
	# y[1] = 6
end

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

# ╔═╡ 8fd21ed8-867a-498d-ad79-94c6aad7d249
let 
	v = [3, 5, 2]
	# sort(v),	v
	sort!(v), v
end

# ╔═╡ 37b063e1-6313-4495-9214-535590ddd6c6
let 
	expression(x) = (x < 0.5) | (x > 1.5)
	x = 0:0.1:2
	valid_indices = findall(expression, x)
end

# ╔═╡ d386b75a-d0ca-4445-8fd9-e2b5358beb23
# @doc findall

# ╔═╡ fc3d73ff-dc8a-4315-85c3-a28c40148504
let 
	h(x, y = 1) = x + y
	x = [1,2,3]
	t = (1,2,3)
	m = I(3)
	h.(m,1)
end

# ╔═╡ 03133a31-8c8d-4e1b-b1c7-3151c56fe9b5
cm"""
Create a function that given a DNA strand (as a `String`, e.g. `"AGAGAGATCCCTTA"`) it counts how much of each nucleotide (A G T or C) is present in the strand and returns the result as a dictionary mapping the nucleotides to their counts. The function should throw an error (using the `error` function) if an invalid nucleotide is encountered. Test your result with `"ATATATAGGCCAX"` and `"ATATATAGGCCAA"`.

__Hint__: Strings are iterables! They iterate over the characters they contain.



"""

# ╔═╡ f8db3f22-8c10-437c-9cc8-6a1d9c7c37a6
cm"""
Using recursion (a function that calls itself) create a function that given an integer `n` it returns the `n-th` Fibonacci number. Apply it using map to the range 1:8 to get the result [1,1,2,3,5,8,13].
"""

# ╔═╡ e0e1a83d-a439-4b8b-8533-b560e550eb5a
cm"""
<div style="display: flex;justify-content:flex-end;">

Source:
[Julia Programming: A Hands-On Tutorial](https://www.matecdev.com/posts/julia-tutorial-science-engineering.html) by [Martín D. Maas](https://github.com/mdmaas)

</div>
"""

# ╔═╡ 59f64278-90ec-4e10-848e-e730bc102de8
cm"""
[`Plots.jl`](https://docs.juliaplots.org/stable/) library is considered the standard plotting tool in the Julia ecosystem. It provides a single API to access multiple “backends”, which include:

- Matplotlib ([Pyplot](https://github.com/JuliaPy/PyPlot.jl))
- [Plotly](https://docs.juliaplots.org/stable/gallery/plotlyjs/)
- [GR](https://docs.juliaplots.org/stable/gallery/gr/)

To select one of these different backends, we simply call the corresponding command. For example, to load `Plots.jl` and use the `GR` backend (which is the default), we would do:
```julia
using Pkg
Pkg.add("Plots")
using Plots
gr()
```
__Other plotting packages for Julia__
- StatsPlots.jl
- Makie.jl	
- VegaLite	
- Gadfly
"""

# ╔═╡ 9e484b64-52df-41a3-8ea7-1f59ed7575eb
let 
	f(x) = sin(x)
	x = -π:0.1:π
	# plot(f)
	# plot(ϵ->sin(ϵ))
	plot(x,f.(x))
end

# ╔═╡ 4b82d0e1-a24f-4f20-9e55-86c7e58abbae
cm"""
| Series attributes | Type                                       |
| ----------------- | ------------------------------------------ |
| linestyle         | :solid, :dash, :dot, :dashdot, :dashdotdot |
| lw                | Float                                      |
| seriescolor       | Color Type                                 |
| seriestype        | :path, :sticks, :scatter, :bar             |
"""

# ╔═╡ 1ffa6751-5e31-4d6b-8ca2-edf4c9665fa5
let
	f(x) = sin(x)
	x = -π:0.1:π
	y = f.(x)
	plot(
		x,y,
		linestyle=:dash,
		seriescolor=:red,
		lw=0.2,
		seriestype=:path
	)
end

# ╔═╡ 67b76fc5-c24b-4bfd-8e11-56da80329f57
cm"""
| Series attributes | Type       |
| ----------------- | ---------- |
| marker            | :d, :hex,  |
| markersize        | Float      |
| markerstrokecolor | Color Type |
"""


# ╔═╡ dea806a3-bf29-4cd2-ba65-0e37eb91a1d6
let
	f(x) = sin(x)
	x = -π:0.1:π
	y = f.(x)
	plot(
		x,y,
		seriescolor=:purple,
		lw=2.2,
		seriestype=:sticks,
		marker=:diamond, # m alias
		markersize=2
	)
end

# ╔═╡ a734b56d-8d26-4475-914a-e6c45df43f91
cm"""
Alternatively we may define a line and a marker as tuples. For examle
"""

# ╔═╡ 79365c5e-2cbc-463f-9e84-cdb0ecc1c311
let
	f(x) = sin(x)
	x = -π:0.1:π
	y = f.(x)
	plot(
		x,y,
		line=(:sticks,3,:green), # order does not matter.
		marker=(:square,:red,5)
	)
end

# ╔═╡ c9fbcf78-ffc5-405e-b6ae-11f4565e432c
cm"""
| Subplot Attribute | Type   |
| ----------------- | ------ |
| title             | string |
| titlefontsize     | Int    |
| xlabel            | string |
| ylabel            | string |
| guidefontsize     | Int    |
| label             | string |
| legendfontsize    | Int    |
| tickfontsize      | Int    |

We can use LaTeX in titles and labels with the package `LaTeXStrings`. Just use the macro literal `L"latex expression"`

Some possible values for the legend position are:

- :right
- :left
- :top
- :bottom
- :topright
- :topleft
- :bottomright
- :bottomleft
- :outerright
- :outerleft
- :outertopright
- :outertopleft
- :outerbottomright
- :outerbottomleft

"""

# ╔═╡ 26a440f9-39cd-4b08-b69f-0d52494cf5b6
let
	f(x) = sin(2π*x)
	x = -π:0.01:π
	y = f.(x)
	plot(
		x,y,
		line=(:path,2,:green), # order does not matter.
		# marker=(:square,:red,5),
		title="the grpah of $(L"f(x)=\sin(2\pi x)")",
		titlefontsize=12,
		label=L"y=\sin(2\pi x)",
		legend=:outertopright,
		xlabel=L"x-"*"Label",
		ylabel=L"y-"*"Label",
		labelfontsize=8,
		legendfontsize=8, #  guidefontsize=8, #for both
		grid=false,
		# ylimits=(-2,2)		
		
	)
end

# ╔═╡ 96db9e10-f01a-47be-84af-b42f9dd68fdb
let
	f(x) = sin(x)
	x = -π:0.01:π
	y = f.(x)
	p1 = plot(x,y, label=L"(x,y)")
	p2 = plot(x,-y, label=L"(x,-y)", legend=:topright)
	p3 = plot(-x,y, label=L"(-x,y)", legend=:topright)
	p4 = plot(-x,-y, label=L"(-x,-y)")
	plot(p1,p2,p3,p4, layout=(2,2))
end

# ╔═╡ 9c29aa5d-4ca0-459d-8cf5-2d5a667115f7
let
	f(x) = sin(x)
	x = -π:0.01:3π
	y = f.(x)
	p1 = plot(x,y,
			xlimits=(-1,2π), 
			ylimits=(-1.5,1.5), 
			label=L"\sin(x)", 
			titlefontsize=10
		)
	p2= plot(p1,aspect_ratio=:equal, title="aspect_ratio=:equal")
	p3= plot(p1,framestyle=:box, title="framestyle=:box")
	p4= plot(p1,framestyle=:origin, title="framestyle=:origin")
	p5= plot(p1,framestyle=:zerolines, title="framestyle=:zerolines")
	p6= plot(p1,framestyle=:grid, title="framestyle=:grid")
	p7= plot(p1,framestyle=:none, title="framestyle=:none")

	p = plot(p1,p2,p3,p4,p5,p6,p7, layout=8)
end

# ╔═╡ cada7e49-558e-483f-9ed8-1c49d6607284
let
	f(x) = exp(x)
	p1 = plot(f, 1, 10, lw=3,
	            title="Regular Plot of exp(x)",
	            label=false)
	
	p2 = plot(f, 1, 10, 
	            yscale=:log10, lw=3,
	            title="Semilog-y plot of exp(x)",
	            label=false)
	p3 = plot(f, 1, 10, 
	            xscale=:log10,
				yscale=:log10, lw=3,
	            title="Log-log plot of exp(x)",
	            label=false)
	
	plot(p1,p2,p3,layout=3)
end

# ╔═╡ 03398b1d-42cc-4cb4-9ca3-6ce991751c1d
cm"""
To plot 
```math
f(x,y) = x^2+y^2
```
we may use `plot` with `linetype=:surface` or the shortcut `surface`.
For countours we use `countour`
"""

# ╔═╡ 54a25523-6d51-494e-91b4-7b4e237b47a0
let
	f(x,y) = x^2 + y^2
	x = -10:10
	y = x
	# either using mesh-like 
	X = repeat(x',length(y),1)
	Y = repeat(y,1,length(x))
	z = f.(X,Y)
	surface(x, y, z)
	# or directly as
	p0=surface(x, y, f)
	# plot(x, y, f, linetype=:surface)
	p1 = contour(x, y, f, fill = true)
	p2 = contour(x, y, (x,y)->-f(x,y))
	p3 = plot(x, y, z, linetype=:contour)
	plot(p0,p1,p2,p3, layout=4)
end

# ╔═╡ 25585215-c44e-4a21-b44f-6ed805c2c36d
cm"""
Example: Draw the DiGraph whose adjacency matrix is
```math
A = \begin{bmatrix}
1&1&1\\
0&0&1\\
1&0& 1
\end{bmatrix}
```
"""

# ╔═╡ 58bf8716-e5b4-49f1-b945-88a530bf1230
let
	# using Graphs and GraphRecipes
	g = [1 1 1;
     	0 0 1;
     	1 0 1]
	graphplot(DiGraph(g), self_edge_size=0.2, size=(200,200))
end

# ╔═╡ 7f4d9aa4-7c60-477f-98b7-830a97e7fad6
cm"""
Example: Draw the type tree of julia type `Integer`
"""

# ╔═╡ a0b5cc9b-37d5-488c-b67a-79f746d5f10a
let
	plot(Complex, 
			method=:tree, 
			fontsize=8, 
			axis_buffer=0.05,
			nodeshape=:rect, 
			nodesize=0.12, 
			# nodecolor=:purple,
			# shorten=0.02,
		size=(1000, 1000))
end

# ╔═╡ e46df874-abb6-472a-b555-fae5ee78454e
cm"""
In Julia every element has a type. The type system is a hierarchical structure: at the top of the tree there is the type `Any`, which means that every element belongs to it, then there are many other sub-types, for example `Number` which includes `Real` and `Complex`, and `Real` contains for example `Int` (integer) numbers and `Float64` numbers.

The functions `subtypes` and `supertype` show the children or the parent of a node in this tree.
"""

# ╔═╡ 2ef36095-b26c-4f05-8a0e-04f33d0c5f84
begin
	subtypes(Integer) 
	# supertypes(Integer)
end

# ╔═╡ cfcc623c-87a9-4913-b7be-3ec06409e486
cm"""You can also use the operator <: to check if something is a "subtype of" something else, for example"""

# ╔═╡ 3347be4e-fe1d-4dcf-97f9-a874a913139c
Float32 <: Number

# ╔═╡ 17178304-b288-4a88-a027-15cadfd5b13d
cm"""
- Concrete types are anything that can be actually instantiated. Any value that exists in Julia code that is running always has a concrete type. 
- Abstract types exist only to establish hierarchical relations between the concrete types. At the moment we don't have a reason for hierarchical relations, but once we talk about __Multiple Dispatch__ this reason will become apparent.

> In terms of __mathematical reasoning__, the distinction between abstract and concrete is simple: concrete types are leaves of the Type tree, while abstract types are anything else.

Based on the below tree of the Number type, one can see that Number, Real, AbstractFloat are all abstract types, while Float64, Float32 are concrete.
"""

# ╔═╡ b740df96-63d8-43ab-89d1-634068aa111a
begin
	plot(AbstractFloat, method=:tree, 
			fontsize=10, 
			# axis_buffer=0.05,
			nodeshape=:rect, 
			# nodesize=0.12, 
			# nodecolor=:purple,
			# shorten=0.02,
		# size=(500, 500)
	)
end

# ╔═╡ f4c5544a-db06-4765-98bc-8423dd08c35f
let
	struct A
		x
		y
	end
	mutable struct B
		x
		y
	end
	a = A(1,2)
	# a.x = 3
	b = B(1,2)
	b.x = 3
	b
end

# ╔═╡ 7969a4e0-cae2-4ad9-8398-3d48215d29e1
cm"""
- The way we defined ``A``, ``B`` here is __bad for performance__. 
	- The fields ``x, y`` can have any possible Type, as we added no restrictions to them. This means that once a function gets an instance of ``A``, the compiler cannot optimize this function, as it is impossible to know by the type ``A`` what are the actual data structures involved.
- To avoid this, use the type assertion operator :: to enforce a Type to the fields of a struct definition.
"""

# ╔═╡ 9d9cb9cb-b376-4292-ab8b-a24f5886ea85
struct Agood
	x::Float64
	y::Float64
	label::String
end

# ╔═╡ 90261e3e-669e-4674-889b-7c51555ab57c
cm"""
- As we specified no subtyping rule for `A, B`, they are by definition subtypes of the central node of the tree, `Any`. 
- Abstract types are meaningful for subtyping relations.
- Abstract types are defined with the __`abstract type`__ keyword
"""

# ╔═╡ 39885d50-be1e-4fc5-874f-4d97e146e16d
abstract type C end

# ╔═╡ 439977d5-b7b6-45e2-a007-cfe0443d61fa
C(5)

# ╔═╡ b743663e-8967-4f45-a04d-13f3311e49ed
cm" - To make `C` useful, we can create some subtypes of `C` using the subtyping operator `<:`"

# ╔═╡ a1aa34e7-eb4a-4b6b-86fa-b8967b7691bc
struct D <: C
	d::Number
end

# ╔═╡ 18bc4c7a-6040-4f81-b4c5-6237679db9a7
D(5),D(1.5), D(1.1+2.2im)

# ╔═╡ 32a83090-efbf-4909-9894-d3c46e2ba902
cm" Now `D` is a subtype of `C`:"

# ╔═╡ ec0b276a-6837-4dd3-a393-7189f2588485
subtypes(C)

# ╔═╡ 9fcb026c-e5d5-452e-aaf8-94561497d546
struct Alpha{T}
	a::T
	b::T
end


# ╔═╡ 3788b175-706c-4494-925d-15baf24def01
cm"""
- Above `Alpha` has two fields `a` and `b` with parametric type `T`. `T` here can be any type. So we may instantiate `Alpha` as `Alpha{Int64}(value1, value2)` and that we create an object of type `Alpha` whose fields are of type `Int64`.
"""

# ╔═╡ d3589579-54b8-49db-920b-b0735fee2048
let
	a = Alpha{Int64}(1,2)
end

# ╔═╡ 757b0203-0102-49a3-831f-b7e725365c44
cm"""
- The high level constructor Alpha(val1, val2) also exists, and will try to deduce what Type should be based on the arguments:
"""

# ╔═╡ ac0f5ba9-7f2e-4862-8026-1215adb29750
let 
	a = Alpha(1.2,2.0)
end

# ╔═╡ 664f5f0b-00bc-49b1-a89a-d7babb01ef91
cm"""
- In some case we may need that each field has its own type. For example
"""

# ╔═╡ 2010a4d0-4831-47c3-963c-4a53f5110197
struct Beta{T1, T2}
	a::T1
	b::T2
end

# ╔═╡ f0d9bd9e-8105-40da-bc0b-b4e4da46d3d3
Beta(1,"Mohammed")

# ╔═╡ 22a7e684-b4ad-4c03-80e8-8d4af722fe1c
Beta(2.0,1+im)

# ╔═╡ e081630c-adc4-4d24-b4d5-12192adf1ed2
cm"""
- Here is another more complex example
"""

# ╔═╡ 2fd2d198-65fa-4f87-a7a8-9a32ab1a8aea
struct Gamma{T1 <: Real, T2 <: Union{String, Complex}}
	a:: T1
	b:: T2
	c::Int
end

# ╔═╡ d75a0f79-12d9-4d12-803c-0b2e94e0352d
Gamma(1,"Hi",5), Gamma(1,1+im,5)

# ╔═╡ 2d71cfca-15c5-4aa6-a75d-38a30f2fb4dc
cm"""
- __Dispatch__ means that when a function call occurs, the language decides somehow which of the function methods have to be used.
- __No dispatch__: In no dispatch, as in e.g. C, there is nothing to be decided. The method and the function are one and the same.
- __single dispatch__, as in most object-oriented languages (like Python), it is possible for the same function name to have different methods:

```python
array.set_size(args...)
axis.set_size(args...)
```
- where `array` could be an instance of something from `numpy` while `axis` could come from `matplotlib`. Here the language dispatches the function `set_size`, depending on the first argument, which is `array` or `axis`. It is important to note that in most object oriented languages, the method is a property of the type.
- Julia use __mutilpe dispatch__ which occurs based on __every single argument__. For example
```julia
set_size(a::Array, args...) = ...
set_size(a::Axis, args...) = ...
set_size(s, a::Array, args...) = ...
set_size(a::Array, b::Vector) = ...
set_size(a::Array, x::Real, y::Real, z::Real) = ...
```
"""

# ╔═╡ 4e4a8dea-57f9-433a-9798-3aa32cb9fba5
begin
	abstract type Animal end
	struct Dog <: Animal
		name::String
	end
	struct Cat <: Animal
		name::String
	end
	## let's instaniate 4  animals
	d1 = Dog("Dog 1")
	d2 = Dog("Dog 2")
	c1 = Cat("Cat 1")
	c2 = Cat("Cat 2")
end

# ╔═╡ 2bd32b4f-5c0b-4695-b9c8-89c55112d37f
cm"""
Let's now define functions that works for both cats and dogs by taking advantage of the `Animal` abstract type.
"""

# ╔═╡ 5bf1cb3e-8d76-4ff2-aaef-4014801ab51a
cm" Let's now be more specific."

# ╔═╡ 40df631e-7e04-475f-a66e-03457f370c5a
begin
	meets(a::Dog, b::Dog) = "sniffs"
	meets(a::Dog, b::Cat) = "chases"
	meets(a::Cat, b::Dog) = "hisses"
	meets(a::Cat, b::Cat) = "slinks"
end

# ╔═╡ 168968e7-32c6-4ddd-8392-7dc53267544a
cm"""
-  What is we need to define a new animal? say turtle
"""

# ╔═╡ bb5de625-f002-4019-b8e1-a0f5d57bc775
begin
	struct Turtle <: Animal
		name::String
	end
	meets(a::Dog, b::Turtle) = "barks"
	meets(a::Turtle, b::Dog) = "hides head"
	turtle1 = Turtle("Turtle 1")
	
	
	
end

# ╔═╡ 9db687cd-31a5-44c4-a32e-807d9097321b
begin
	function encounter(a::Animal, b::Animal)
		verb = meets(a,b)
		println("$(a.name) meets $(b.name) and $verb")
	end
	meets(a::Animal, b::Animal) = "passes by"
end

# ╔═╡ f5b0c972-a82e-40bc-a4a2-4a5173198804
encounter(c1,d2)

# ╔═╡ 9231e42c-052f-498e-baf3-46c54714d5ab
begin
	encounter(d1,d2)
	encounter(d1,c2)
	encounter(c1,c2)
	encounter(c1,d2)
end

# ╔═╡ 4f9e3ad9-e52e-4fe2-b26a-e8fed89522f2
begin 
	encounter(turtle1, d1)
	encounter(d2,turtle1)
	encounter(c1,turtle1)
end

# ╔═╡ 78aa1122-ce26-49c7-ac00-6a9546eecf43
begin
	# methods(meets)
	@which meets(c1, d2)
end

# ╔═╡ 231b4222-bb55-44f3-aa3e-27737a20ec0c
struct OneHotVector <: AbstractVector{Bool}
	len::Int
	ind::Int
end

# ╔═╡ 27276394-9698-4893-ad01-f4ec56831bc3
begin
	Base.size(v::OneHotVector) = (v.len,)
	Base.getindex(v::OneHotVector,i::Integer) = i == v.ind
end

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
md"# Julia Basics"

# ╔═╡ a66f9df2-a058-45fc-89da-3892099649c5
md"""
## Basic syntax
### Assignment

- You can assign anything to a variable binding. This includes functions, modules, data types, or whatever you can come up with.
"""

# ╔═╡ 321734c2-5478-4662-8b20-0dd2bcf6e052
md"- Strings are created between double quotes \" while the single quotes ' are used for characters only."

# ╔═╡ b02ddc65-6661-406c-9f35-48a935f7951a
md" -  Since assignment returns the value, by default this value is printed. This is AMAZING, but you can also silence printing by adding ; to the end of the expression:"

# ╔═╡ 76f4b128-0fa4-4e54-8ad4-56d38f8fbd0d
md"- you can interpolate any expression into a string using \$(expression)"

# ╔═╡ 226e7748-0210-4e64-a83c-b5a02883480f
md"""
##### Note on [Pluto](https://plutojl.org/)
Simple, reactive programming environment for Julia

__Workspace variables__
Pluto offers an environment where changed code takes effect instantly and where deleted code leaves no trace. Unlike Jupyter or Matlab, there is no mutable workspace, but rather, an important guarantee:

At any instant, the program state is completely described by the code you see.

No hidden state, no hidden bugs.

Pluto doesn't support multiple expressions per cell. This is a conscious choice - this restriction helps you write less buggy code once you get used to it. To fix the code, you can either split the above cell, or wrap it in a begin ... end block. Both work.
"""

# ╔═╡ bb674edd-3f56-4343-a1ad-939700d6e76f
md"""
## Math Operations
Basic math operators are +, -, *, / and ^ for power.
"""

# ╔═╡ 794ab7fe-e163-446b-9df7-d848d9663864
md"""## Type Basics
Everything that exists in Julia has a certain Type. (e.g. numbers can be integers, floats, rationals). This "type system" is instrumental for the inner workings of Julia, and is mainly what enables Julia to have performance matching static languages like C.

The type system also enables Multiple Dispatch, one of Julia's greatest features, which we will cover in the second lecture.

To find the type of a thing in Julia you simply use __`typeof(thing)`__:

"""

# ╔═╡ 577dcac2-35ad-42e9-af63-d6087da44f96
md"""## Basic collection datastructures
- Index a collection with brakets `A[1]`.
- indexing in Julia starts from 1
### Tuples
__Tuples__ are immutable ordered collections of elements of any type. They are most useful when the elements are not of the same type with each other and are intended only for small collections.
"""

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

# ╔═╡ d66e4de0-8af1-4329-b129-a356954336e2
md"""
### Arrays
The standard Julia Array is a __mutable and ordered collection of items of the same type__. The dimensionality of the Julia array is important. A __Matrix__ is an array of dimension 2. A __Vector__ is an array of dimension 1. The element type of what an array contains is irrelevant to its dimension!

i.e. a Vector of Vectors of Numbers and a Matrix of Numbers are two totally different things!

The syntax to make a vector is enclosing elements in brackets
"""

# ╔═╡ 6708768d-dd92-41ab-8f93-6437838b47a8
md"""
As mentioned, the type of the elements of an array must be the same. Yet above we mix numbers with strings! I wasn't lying though; the above vector is an unoptimized version that can hold any thing. You can see this in the type of the vector, `Vector{Any}`.

Arrays of other data structures, e.g. vectors or dictionaries, or anything, as well as multi-dimensional arrays are possible:

- If you want to make a matrix, two ways are the most common: (1) specify each entry one by one
"""

# ╔═╡ 9facd690-4dd2-45dc-9227-284a15b3b789
md"""
- or (2), you use a function that initializes a matrix. E.g. `rand(n, m)` will create an n×m matrix with uniformly random numbers
"""


# ╔═╡ b75a9f13-1e76-45e4-8fd5-590c4c5bd001
md"""
- Lastly, for multidimensional arrays, the : symbol is useful, which means to "select all elements in this dimension".
"""

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

# ╔═╡ f2794804-d49b-40c0-b4b0-5b8335bb00a4
md"""
- Ranges always include the first element and step until they do not exceed the ending element. If possible, they include the stop element (as above).
"""

# ╔═╡ f995c0d7-7fc4-4cde-875b-1ebab746a928
md"""
- Ranges are not unique to numeric data, and can be used with anything that extends their interface, e.g.
"""

# ╔═╡ 5f8a9545-a7e7-4516-99b5-59b6d8da58da
md"""
Ranges are cool because they do not store all elements in memory like Vectors. Instead they produce the elements on the fly when necessary, and therefore are in general preferred over Vectors if the data is equi-spaced.
- Lastly, ranges are typically used to index into arrays. One can type `A[1:3]` to get the first `3` elements of `A`, or `A[end-2:end]` to get the last three elements of `A`. If `A` is multidimensional, the same type of indexing can be done for any dimension:
"""


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

# ╔═╡ 377841c4-acd1-4f2b-ae0d-56850ab095a7
md"""
- The nature of the iterating variable depends on what the iterating container has. For example, when iterating over a dictionary one iterates over pairs of key-value.
"""

# ╔═╡ c0490f81-cc72-4314-9f1d-5c0e4d0c0052
md"""
- In the context of for loops, the enumerate iterator is often useful. It takes in an iterable and returns pairs of the index and the iterable value.
"""


# ╔═╡ e3d78be8-e854-4b21-b332-54d4e224565b
md"""
### command termination
Julia has a modern syntax parser that automatically understands when a command starts and ends. It does not require identation (like `Python`) or the `;` character (like `C`) to establish the end of a command. The following two are totally valid and syntactically identical Julia codes
"""

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

# ╔═╡ c72b5788-bf27-4149-8d03-c52172ee0d62
md"""
### `brea`k and `continue`
The keywords `continue` and `break` are often used with conditionals to skip an iteration or completely stop the iteration code block.


"""

# ╔═╡ c8d9950c-a7ed-498f-887f-3b01081f69aa
md"""
## List comprehension
The list comprehension syntax
```julia
[expression(a) for a in collection if condition(a)]
```
is available as a convenience way to make a `Vector`. The `if part` is optional.

"""

# ╔═╡ 9206fe69-65e7-4735-ae5d-31becff13f3e
md"""
## Functions
Functions are the bread and butter of Julia, which heavily supports functional programming.

### Function declaration
Functions are declared with two ways. First, the verbose
"""

# ╔═╡ cf01e24e-8478-48a0-94e6-06b2846da953
md"""
- Functions in Julia support optional positional arguments, as well as keyword arguments. The __positional__ arguments are always given by their order, while __keyword__ arguments are __always given by their keyword__. Keyword arguments are all the arguments defined in a function after the symbol ;. Example:
"""

# ╔═╡ 9bccf535-3c46-4486-bcdc-0d9b2c46b146
md"""
### Passing by reference: mutating vs. non-mutating functions
You can divide Julia variables into two categories: 
- __Mutable__: meaning that the values of your data can be changed in-place, i.e. literally in the place in memory the variable is stored in the computer. 
- __Immutable__:  immutable data cannot be changed after creation, and thus the only way to change part of immutable data is to actually make a brand new immutable object from scratch. 

Use isimmutable(v) to check if value v is immutable or not.

For example, Vectors are mutable in Julia:
"""

# ╔═╡ 6baa0be2-55b4-4aa8-9c70-5c4b56db679d
md"""
- Julia __passes values by reference__. This means that if a mutable object is given to a function, and this object is mutated inside the function, the final result is kept at the passed object. E.g.:
"""

# ╔═╡ c12eed0b-1182-4c06-92ed-eff8aea456f4
md"""
- __By convention__, functions with name ending in ! alter their (mutable) arguments and functions lacking ! do not. Typically the first argument of a function that ends in ! is mutated.

For example, let's look at the difference between sort and sort!.
"""

# ╔═╡ cdb77a95-5312-4839-bc59-8678a4f52320
md"""
### Functions as arguments
Functions, like literally anything else in Julia, are objects that can be passed around like any other value. Including giving them as arguments to other functions.

A typical application of this is with the `findall` and related functions, that find the indices of all elements in a collection that return `true` for a particular expression.


"""

# ╔═╡ 0b1da978-87fe-481b-82ed-75048d658f21
md"""
## The help system
Typing ? followed by a function (or type) name will display its documentation string. Alternatively you can type @doc and then the function name.

For example
"""

# ╔═╡ ef2f4782-bba4-4db0-85b1-70a9ad1fdef3
md"""
## Broadcasting

Broadcasting is a convenient syntax for applying any function over the elements of an iterable input. I.e., the result is a new iterable whose elements is the function application of the elements of the input.

Broadcasting is done via the simple syntax of adding a dot . before the parenthesis in the function call: `g.(x)`.



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

# ╔═╡ af2d07b5-0d00-4f74-b8e9-26af7a9a26b2
md"""
### Fibonacci numbers
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

# ╔═╡ 0a412d5b-2801-4d1c-afd1-700c396a2410
md"""
# Plots
"""

# ╔═╡ 02fec167-4a5a-4b5a-9e44-ca7f2df0a7a4
md"## Plots.jl"

# ╔═╡ d1e88e25-b117-4225-b158-d32bffe8a692
md"""
## Simple Plots
Let's plot the function $f(x)=\sin(x)$ over the interval $[-\pi,\pi]$.

"""

# ╔═╡ 3a469b39-ce07-403d-8759-769c4071b7f1
md"## Lines Styles and Markers"

# ╔═╡ c7545ed3-7c98-486e-9813-d6563f1cb186
md"## Markers"

# ╔═╡ 889c2b3c-642e-4ec3-acd1-23e7a766a416
md"## Text, Font & LaTeX"

# ╔═╡ bff22eaf-d30c-475a-94f8-7dba1893596d
md"""## Subplots

We can use `layout` to produce multiple plots in one figure. There many ways to produce multiple plots. We give an example of here (see the `Plots.jl` documentation under layout for more).
"""

# ╔═╡ 3e5bc1ac-0b1e-4af0-a9fe-f7cb6e2418dd
md"""
## Axes: Limits, Aspect Ratio & Frames

- To control the feasible part of the axes, we use `xlimits` and `ylimits` for the $x-$axis and the $y-$axis respectively. 
- To control the scales of the axes, we use `aspect_raio`.
- To control the figure frame and the location of the axis, we use `framestyle`.
"""

# ╔═╡ 2d6311c5-9d1a-4031-a33e-397ab8004515
md"""
## Log and Semilog plots

We use `xscale=:log10` and/or `yscale=:log10` to set one of both axes to log scale. For example

"""

# ╔═╡ edbd6944-ebfa-4f6e-95e2-bb757a0ee1c4
md"""
## 3D and Cantours

3D plots work in a similar way as 2D plots, we need to provide `x`, `y` and `z` values. Here is an example.

"""

# ╔═╡ 1bfbb181-a89d-45cf-8612-45d5c6c6fe6f
md"""
## Plot Recipes
Recipes are a way of defining visualizations in your own packages and code, without having to depend on Plots. Here we give an example with plotting graphs (as in Graph theory). 
"""

# ╔═╡ 28c4cc6a-1f3b-421a-9608-2c8f539c3551
md"""
# Julia Type System
"""

# ╔═╡ e17139db-a3c4-4046-851e-e671d2c47b85
md"## Abstract vs Concrete types"

# ╔═╡ 88afcd83-9c3b-4924-a074-b7adf7bfd98e
md"""
## Custom Types
We can of course, create our own Types. We can do this using `struct` and `mutable struct` keywords.

Types then are instantiated by calling them as if they are functions, with arguments their fields (this is the "default" constructor, and one can make any arbitrary constructor they want).
"""

# ╔═╡ de38ee7b-4dd4-48ba-85a9-5c3934b33ce6
md"## Abstract Types"

# ╔═╡ be79023e-364c-447b-93be-96b70cbf5ee7
md""" ## Parametric Types
Julia types can be parameterized based on other types, meaning that you can indeed make a field of a type to be "anything that is a number", and still be type stable!

This is very useful for reducing code replication as well as leveraging multiple dispatch more. Type-parameterization means that when defining a struct, the fields of the struct could be of an arbitrary Type. Type-parameterization uses the curly brackets syntax. For example:
"""

# ╔═╡ b2b1dc51-f134-42c3-902b-8b4449c9ae2c
md"""# Multiple Dispatch

__Multiple dispatch__ is the core programming paradigm of Julia. This notebook presents simple examples that can teach you multiple dispatch.

__What is Multiple Dispatch?__

We should distinguish between two terms.
- __function__: The name of the function or process we refer to. In Julia, a function is an object that maps a tuple of argument values to a return value. Julia functions are not pure mathematical functions, because they can alter and be affected by the global state of the program. The basic syntax for defining functions in Julia is: 
```julia
function f(x,y)
   x + y
end
```
- __method__: what actually happens when we call the function with a specific combination of input arguments.It is common for the same conceptual function or operation to be implemented quite differently for different types of arguments: adding two integers is very different from adding two floating-point numbers, both of which are distinct from adding an integer to a floating-point number. Despite their implementation differences, these operations all fall under the general concept of "addition". Accordingly, in Julia, these behaviors all belong to a single object: the + function.

"""

# ╔═╡ 1011090d-1728-41f5-ae12-4ed8c9f22a7e
md"""
## How it works
Keeping things simple, __multiple dispatch__ follows one really basic rule: __*the most specific method that is applicable to the input arguments is the one chosen!*__

- Upon calling a function, __Julia__ will try to find the method that is most specific across all arguments. 
- This means that if a method is defined for both the abstract type combination, as well as the concrete type combination, Julia will always call the more concrete one. - This rule also applies to e.g. parametric types, since Vector{Float64} is more specialized than Vector a method defined explicitly for Vector{Float64} is more specific. 
- This rule also applies to unions, since Float64 is more specialized than Union{Float64, String}.

__Two important points:__

- __methods__ do not belong to the Types!
- new methods can be defined after the Types have been defined!
"""

# ╔═╡ a6ceac00-1425-44f8-a1b4-049225bc9fde
md"## Example"

# ╔═╡ e03116a6-0a0a-415e-aa86-26db79f7c115
md"""
- We can check how many methods a function has using `methods` 
-  We can check whcih method is used for a particalur call by `@which` macro
"""

# ╔═╡ 08387632-41c1-4ced-822f-c13f5a15f895
md"""
## Example: OneHot Vector
In various fields that use linear algebra, like machine learning, a special vector datastracture is used often, called a "OneHot" vector. This vector has a 1 in a single entry, and 0 in all other entries. Having a dedicated structure for this vector is super efficient, because you only need to store 2 numbers to store it in memory, irrespectively of how large the vector is!

Let's create this in Julia. To make our life easy, we will make this new Type a subtype of __`AbstractVector`__. This means that all functions that are defined on the abstract level for __`AbstractVector`__ will work with our type as well (provided we implement all the necessary methods).
"""

# ╔═╡ d552531e-4f06-4ec2-8081-3e209c767b9e
md"""
- In order for our new vector to behave like a vector, we need to define some methods; mainly `size` and `getindex`
"""

# ╔═╡ 009c5a7d-8001-48be-8e8e-eb55a70560fd
begin
	oh1 = OneHotVector(10,3)
	oh2 = OneHotVector(10,3)
	size(oh1)
	sum(oh1)
	dot(oh1,oh2)
end

# ╔═╡ 28a1c22e-417b-4e55-be60-7669168ec87c
md"## Excercises"

# ╔═╡ 0872b830-bc5b-44cc-b325-1b6c3190e4f9
md"""
### 1) Type Hierarchies
Create a function __`person_info(p)`__ that takes in any type of a __"person"__ and prints their name and potentially some extra information. For a normal person, only the name is printed. If the person is a student, it should print their name and grade. If it is a group leader, then print their name and their group name. If the input to person_info is something other than a "person", it should error.

__Solve this exercise without using a single if statement__; only multiple dispatch. These kind of problems seem to be "natural" to solve using if statements. However using multiple dispatch instead makes the code clearer, more easy to extend and (typically) more performant, because of how Julia compiles code.

__*Hint*__: given the rules of the exercise, you do not actually need abstract types to solve it. However, it is in general good practice to use them.
"""

# ╔═╡ e611249c-cf79-4e9f-aeb6-3fb5420d3ed3
md"""
## 2) Indexing of a range type 
Create your own `Range` object, which is an efficient iterable container defined by a (start, step, stop), which gives numeric values incremented by step starting from start, while ensuring that the result never exceeds stop. You only need to extend (add a new method) to the Base.getindex(r::Range, i::Int) function for this exercise.

Test your range by initializing a range like `r = Range(0, 0.5, 1)`, and checking if `r[1]`, `r[2]`, `r[3]` give you indeed `0.0, 0.5, 1.0` as they should.

This object can efficiently represent this range while storing only these 3 numbers, instead of all elements that theoretically belong to the range.

Hints:
* As a first step, define your `Range` `struct`, preferably by making it a parametric type of 1 type-parameter (think about how many fields it should have).
* The Julia syntax `A[i]` is translated to `getindex(A, i)`. That's why you need to extend the Base.getindex function. Use the help functionality on getindex to learn more.
- Implement indexing for your Range type via extending `getindex`. Index `1` giving `start`. Be sure it errors for incorrect indices (where the value given by the range would exceed `stop`).
"""

# ╔═╡ e4621323-7a8a-4d53-9662-ef42af0a7901
md"""
## 3) Rational Numbers
Implement the type `RationalNumber <: Real`, similar to Julia's `Rational`, but without being a parametric type (i.e. both fields are just `Int`). Using the following function
```julia
function simplify(n::Integer, d::Integer)
    g = gcd(n, d)
    m = d < 0 ? -1 : 1
    (m * n ÷ g, m * d ÷ g)
end
```
define an __inner constructor__: that is a function `RationalNumber` inside the type-definition, which returns `new(simplify(n, d)...)`. `new` is a special keyword and stands for the type to be created. For example:
```julia
struct A
    a::Float64
    function A(a)
        x = cos(a)
        return new(x) # This creates an instance of A with the value x
    end
end
```
Inner constructors are used to perform specific tests or transformations necessary before instantiating a type. In this exercise the inner constructor simply ensures that if you try to define the rational number 5/10 you in fact create the equivalent (but simpler) 1/2.

Then, implement the operations `+, -, *, /` between `RationalNumber` s, by extending e.g. `Base.:+(r1::RationalNumber, r2::RationalNumber)`.

Test your code by ensuring that `RationalNumber(5, 10)` indeed has fields `(1, 2)`. Then test all operations with the rationals `1/2` and `1/3`.

__extra point__: Find out the minimum extension you need to make to your number type so that all trigonometric functions like cos, tanh, etc. work out of the box with it. (Hint: it is only one more method definition)
"""

# ╔═╡ 06033157-0f51-408c-879d-317ecf06d8a9
md"""# Linear Algebra
In addition to (and as part of) its support for multi-dimensional arrays, Julia provides native implementations of many common and useful linear algebra operations which can be loaded with ``` using LinearAlgebra```. Basic operations, such as `tr`, `det`, and `inv` are all supported:
"""

# ╔═╡ 4b05e48e-13da-4fb4-8570-b96b9acbf2d3
let
	# using LinearAlgebra
	A = [1 2 3;4 1 6;7 8 1]
	tr(A)
	inv(A)
	det(A)
	eigvals(A)
	eigvecs(A)
	factorize(A)
end

# ╔═╡ fb57b645-2104-4f35-a710-6383ce7744a6
md"# Differential Equations"

# ╔═╡ 1b361fc0-0c73-42c3-978f-48714de13ac6
md"""
## ODEs

__Defining and solving some ODEs__

The way `DifferentialEquations.jl` works is quite straightforward:

- Make your set of ODEs a Julia function `f`
- Put `f`, an initial state and a parameter container into an `ODEProblem`.
- Choose the solvers and the arguments of the solvers you will use (e.g. tolerances, etc.)
- Give the ODEProblem as well as the auxiliary arguments to the function solve!
"""

# ╔═╡ 9e0a7550-5508-4307-908b-438b8a10fa48
md"""
### Example 1
Soving Scalar Equations

Solve
```math
\frac{du}{dt} = 1.01u, \; \; u(0) = \frac{1}{2}, \quad t\in [0,1], 
```
Here, 
- ``u`` is the current state variable, 
- ``t`` is the current time.
- ``u_0`` is the initial value of ``u``.
"""

# ╔═╡ 4845f829-a390-4f28-b09b-7e37ce77a3c5
cm"""
- After reading the [__documentation__](https://docs.sciml.ai/DiffEqDocs/stable/basics/overview/#Overview-of-DifferentialEquations.jl). An ordinary differential equation is defined by
```math
\frac{du}{dt} = f(u,p,t)
```
over some time interval `tspan` with some initial condition ``u0``, and therefore the `ODEProblem` type is defined by those components:
```julia
problem = ODEProblem(f,u0,tspan)
```
Then we solve using a unified interface via `solve`
```julia
solution = solve(problem,alg;kwargs)
```
"""

# ╔═╡ 74525e5d-397a-4621-b3db-de5455293d67
# @doc ODEProblem

# ╔═╡ cf01a578-fe84-42db-a4bb-0524c5c5377b
let
	# let's solve the example
	f(u, p, t) = 1.01*u
	u0 = 1/2
	tspan = (0.0, 1.0)
	prob = ODEProblem(f,u0,tspan)
	sol = solve(prob, Tsit5(), reltol=1e-8, abstol = 1e-8)
	# Tsit5(): Tsitouras 5/4 Runge-Kutta method. (free 4th order interpolant).
	l = @layout [d b
				c ]
	p0=plot(title = "Solution to the linear ODE with a thick line")
	p1 = plot(sol, linewidth = 5,xaxis = "Time (t)", yaxis = "u(t) (in μm)", label = "My Thick Line!"); # 		legend=false
	p2 = plot(sol.t, t -> 0.5 * exp(1.01t), lw = 3, ls = :dash, label = "True Solution!", xaxis = "Time (t)", yaxis = "u(t) (in μm)");
	p12 = plot(p1,sol.t, t -> 0.5 * exp(1.01t), lw = 3, ls = :dash, label = "True Solution!")
	plot(p1,p2,p12, layout=l, title = ["Numerical" "Exact" "Solution to the linear ODE with a thick line"])
end

# ╔═╡ 571706ad-69b6-42aa-a43c-49a5454246c8
md"""
### Example 2: Simple Pendulum

We will start by solving the pendulum problem. In the physics class, we often solve this problem by small angle approximation, i.e. ``\sin(θ)≈θ``, because otherwise, we get an elliptic integral which doesn't have an analytic solution. The linearized form is
```math
\overset{\cdot\cdot}{\theta} +\frac{g}{L}\theta =0
```
But we have numerical ODE solvers! Why not solve the real pendulum?
```math
\overset{\cdot\cdot}{\theta} +\frac{g}{L}\sin\theta =0
```

Notice that now we have a second order ODE. In order to use the same method as above, we need to transform it into a system of first order ODEs by employing the notation 
```math
\begin{array}{lcl}
\displaystyle \overset{\cdot}\theta & = & \displaystyle d\theta\\
\displaystyle \overset{\cdot}{d\theta} & = & \displaystyle -\frac{g}{L}\sin\theta\\
\end{array}
```

"""

# ╔═╡ 773d50ea-dfd6-4197-9c99-4853f5310e7a
begin
	# constants
	g = 9.81
	L = 1.0

	# Initial Conditions
	u₀=[0, π/2]
	tspan = (0.0, 6.3)

	# Define the problem
	function simplePendulum(du,u, p, t)
		θ = u[1]
		dθ = u[2]
		du[1] = dθ
		du[2] = - (g/L) * sin(θ)
	end
	prob = ODEProblem(simplePendulum, u₀, tspan)

	# Pass to solvers
	sol = solve(prob, Tsit5())

	#Plot
	plot(sol, linewidth = 2, title = "Simple Pendulum Problem", xaxis = "Time",
    yaxis = "Height", label = ["\\theta" "d\\theta"])
	# sol[:]
end

# ╔═╡ 613bd9bd-3560-4592-8d9f-ae5c77c42c9f
let 
	p = plot(sol, idxs = (1, 2), xlims = (-9, 9), title = "Phase Space Plot",
    xaxis = "Velocity", yaxis = "Position", leg = false)
function phase_plot(prob, u0, p, tspan = 2pi)
    _prob = ODEProblem(prob.f, u0, (0.0, tspan))
    sol = solve(_prob, Vern9()) # Use Vern9 solver for higher accuracy
    plot!(p, sol, idxs = (1, 2), xlims = :none, ylims = :none)
end
for i in (-4pi):(pi / 2):(4π)
    for j in (-4pi):(pi / 2):(4π)
        phase_plot(prob, [j, i], p)
    end
end
plot(p, xlims = (-9, 9))
end

# ╔═╡ a1c99163-03d9-4c84-b34d-c5e605bb010a
md"# Optimization"

# ╔═╡ f977a742-9110-428c-a854-e1f79ea0e8f5
md"""
## Example 1
Find the minimum value of Rosenbrock function (2d) defined as
```math
f(x,y) = (a-x)^2 + b(y-x^2)^2
```
This function is non-convex and it has a global minimum at ``(a,a^2)``.
"""

# ╔═╡ 4478faf8-13ac-40bb-a222-259d060b4ae7
let
	rosenbrock(x, p) = (p[1] - x[1])^2 + p[2] * (x[2] - x[1]^2)^2
	x = -1:0.01:1.2
	y = 0:0.01:2
	# X = repeat(x',length(x),1)
	# Y = repeat(x,1,length(x))
	# Z = map((x,y)->rosenbrock([x,y],[1,100]),zip(X,Y))
	# Z = zip(X,Y) |> collect .|> x->rosenbrock(x,[1 100])
	# plot(X,Y,Z, label="")
	contour(x,y,(x,y)->rosenbrock([x,y],[1,100]))
end

# ╔═╡ 77db2c9d-381c-4429-8c91-fa33ccbce66d
md"""
## Defining the Objective Function

The objective function in __`Optimization.jl`__ is assumed to have the signature
`objective(x,p)`.
- `x` is optimization variables.
- `p` is a vector of any other parameters.

Let's now solve __Example 1__.
"""

# ╔═╡ 734ec866-c4de-451e-b9db-dfdd14ad6719
begin 
	rosenbrock(x, p) = (p[1] - x[1])^2 + p[2] * (x[2] - x[1]^2)^2
	x0 = zeros(2)
	p = [1.0, 100.0]
	""
end

# ╔═╡ f795eb08-164e-4cd9-8308-e3d1575347d6
md"### Derivative-Free solvers"

# ╔═╡ 33acaaa2-934d-48ad-b7f9-061ccde6c6d5
let
	# Import the package and define the problem to optimize
	# using Optimization
	
	
	prob = OptimizationProblem(rosenbrock, x0, p)

	# 1
	# Import a solver package and solve the optimization problem
	# using OptimizationOptimJL # solver package for Optim.jl
	# sol = solve(prob, NelderMead())
	# summary
	# sol.original

	# 2
	# Import a different solver package and solve the optimization problem a different way
	# using OptimizationBBO # solve package for BlackBoxOptim.jl.
	# prob = OptimizationProblem(rosenbrock, x0, p, lb = [-1.0, -1.0], ub = [1.0, 1.0])
	# sol = solve(prob, BBO_adaptive_de_rand_1_bin_radiuslimited())
	# sol.original

	
end

# ╔═╡ e38f0ea5-9394-4204-ade2-acf5b65d6a18
md"""
### Gradient-Based Solvers

In the above example, niether of the used methods require the gradient. 
However, often first order optimization (i.e., using gradients) is much more efficient. Defining gradients can be done in two ways. One way is to manually provide a gradient definition in the `OptimizationFunction` constructor. However, the more convenient way to obtain gradients is to provide an AD backend type.

For example let's us Broyden–Fletcher–Goldfarb–Shanno (BFGS) method in `OptimizationOptimJL`. This method is first-order method. So to solve __Example 1__, we need to provide the gradient either directely or using automatic differentiation, forward-mode, (`using ForwardDiff`)
"""

# ╔═╡ 5b19c03c-3e99-4fb0-a918-72f09fa8626a
let 
	# using ForwardDiff
	optf = OptimizationFunction(rosenbrock, Optimization.AutoForwardDiff())
	prob = OptimizationProblem(optf, x0, p)
	sol = solve(prob, BFGS())
	sol.original
end

# ╔═╡ ed667b1a-3fa9-40c5-8c7f-637926800bb6
md"""
### Hessian-Based Solvers

"""

# ╔═╡ 0e5a2adf-3ffd-4fba-9e0c-e6ea098d4334
let 
	# using ForwardDiff
	optf = OptimizationFunction(rosenbrock, Optimization.AutoForwardDiff())
	prob = OptimizationProblem(optf, x0, p)
	sol = solve(prob, Newton())
	sol.original, sol.u
end

# ╔═╡ 9b9cf2d0-7027-4dbe-9293-bced98e1ad5b
md"""
## Constraints
### Example 2:
Solve 
```math
\begin{array}{lcl}
\displaystyle \min & (a-x)^2 + b(y-x^2)^2 \\
\text{subject to}\\
& \displaystyle x^2+y^2 \leq 0.8 \\
& \displaystyle -1.0\leq xy \leq 2.0 \\
\end{array}
```
We need a solver that handles nonlinear constraints. `MathOptInterface` and `Optim`'s `IPNewton` is such solver. __`Optimization.jl`__ provides a simple interface to define the constraint as a Julia function and then specify the bounds for the output in `OptimizationFunction` to indicate if it's an equality or inequality constraint.
"""

# ╔═╡ 6573c039-32da-4144-bde2-f35afc166fe4
let
	# using Optimization,  OptimizationOptimJL
	rosenbrock(x, p) = (p[1] - x[1])^2 + p[2] * (x[2] - x[1]^2)^2
	x0 = zeros(2)
	p = [1.0, 1.0]
	# constraint functions.
	cons(res, x, p) = (res .= [x[1]^2 + x[2]^2, x[1] * x[2]])
	optprob = OptimizationFunction(rosenbrock, Optimization.AutoForwardDiff(), cons = cons)
	prob = OptimizationProblem(optprob, x0, p, lcons = [-Inf, -1.0], ucons = [0.8, 2.0])
	sol = solve(prob, IPNewton())
	sol.u
	## check the constraints
	cons(x0,sol.u,p)
	sol.objective, prob.f(sol.u,p)
	# if we change the constrains to
	# x^2 + y^2 =1
	# xy = 0.5
	prob = OptimizationProblem(optprob, x0, p, lcons = [1, 0.50], ucons = [1, 0.5])
	sol = solve(prob, IPNewton())
	sol.u[1]*sol.u[2]
end

# ╔═╡ 2851f98f-0ee1-4264-827d-d3f1ebe59763
md"""
# Linear Solvers
To solve a linear system ``Ax=b``, one might use the slash operator ``\mbox{\\}``. This is the same as in `MATLAB`. For example, to solve
```math
\begin{align}
2x+y-2z &=& -1\\
3x-3y-z &=& 5\\
x-2y+3z &=& 6\\
\end{align}
```

"""


# ╔═╡ 84e61787-8d2b-4c62-8752-1f57777bbbb8
let 
	A = [2. 1. -2
		 3 -3 -1
		1 -2 3]
	b= [-1;5;6]
	x = A\b
	
end

# ╔═╡ ff791ba6-25db-4538-9166-88f06de871c1
let
	# using LinearSolve
	A = Float64.([2 1 -2
		 3 -3 -1
		1 -2 3])
	b= Float64.([-1;5;6])
	prob = LinearProblem(A,b)
	# sol = solve(prob)
	sol = solve(prob,KrylovJL_GMRES())
	sol.u
	sol.cache
end

# ╔═╡ c59effcd-589d-4ca8-bf99-92fa73262309
let 
	# using NonlinearSolve
	f(u,p) = u.^2 .- p
	u0 = [1.0, 1.0]
	p = 2.0
	prob = NonlinearProblem(f, u0, p)
	sol = solve(prob, TrustRegion())
	u = sol.u
	f(u, p)
	sol.stats
	sol.alg
end

# ╔═╡ 50298b73-d192-4f80-8fda-517d67913d83
md"""

__`Symbolics.jl`__ is a symbolic modeling language. 

__Installation__
```julia
using Pkg
Pkg.add("Symbolics")
```
"""

# ╔═╡ 1b0e91f2-6c21-4eb2-827c-091229cb7e8a
let 
	# using Symbolics
	# Building Symbolic Expressions
	@variables x y
	# Define an expression
	z = x^2 + y
	# Define an array of expressions
	A = [x^2+y 0 2x
		0     0 2y
		y^2+x 0 0
	]
	# We can use normal Julia functions
	function f(u)
		[u[1]-u[3],u[1]^2-u[2],u[3]+u[2]]
	end
	f([x,y,z])

	# We can define an array variable
	@variables u[1:4]
	f(u)

	# Derivatives
	@variables t
	# Define the differential operator d/dt
	D = Differential(t)
	# we can now differentiate an expression in t
	d = D(t^2+t)
	# The result is lazily computed to expand we use
	expand_derivatives(d)
	# We can also compute the Jacobian of an array
	Symbolics.jacobian(A[1,:],[x,y])

	# We can simplify expression
	# using SymbolicUtils
	simplify(2x + 2y)
	# or 
	B = simplify.([t + t^2 + t + t^2  2t + 4t
               x + y + y + 2t     x^2 - x^2 + y^2])
	# We can then use substitute to change values of an expression around:
	simplify.(substitute.(B, (Dict(x => 2, t=>1, y=>0),)))

	# We substitute 
	V = substitute.(B, (Dict(x => 2, t=>1, y=>0),))
	Symbolics.value.(V)
end

# ╔═╡ fc7c9dfa-6879-46f1-aa78-9e3d0f3a8c49
begin
	pg = path_graph(6)
	graphplot(pg)
end

# ╔═╡ eaa17eb2-6885-4530-98e4-31da85e5a69f
md"How many vertices?"

# ╔═╡ 6171e4c5-be98-4815-8c9d-ed9794c3d50f
nv(pg)

# ╔═╡ f48602c0-08ee-4515-82d7-45f7c4d1e05c
md"How many edges?"

# ╔═╡ 05b73d9b-3682-47ee-a329-4d4fdd2b16fe
ne(pg)

# ╔═╡ c16a6c92-d779-434b-8e13-d6cb422a6760
md"Let's add an edge"

# ╔═╡ 4723a677-f11b-4506-bc3d-bc77bc260b64
begin
	add_edge!(pg,1,6)
	graphplot(pg)
	# Does the graph has an edge between 1 and 3
	has_edge(pg,1=>5)
	# Is it directed?
	is_directed(pg)
	# What are the nieghbor of a vertex?
	neighbors(pg,2)
end

# ╔═╡ 12d51ec0-c678-4eab-8802-babc1b00a2f6
md"Let's try a simple graph "

# ╔═╡ 076bbcf2-d387-4421-88d8-74c48d612bdb
function generateRandomGraph(n,c=5)
	g = SimpleGraph(n)
	m = Int(n//2)+1
	v1 = rand(1:m,c)
	v2 = rand(1:n,c)
	# length.([v1,v2])
	for i ∈ 1:c
		add_edge!(g,v1[i],v2[i])
	end
	g
end

# ╔═╡ 1121ff38-a9af-49cd-a067-fe48ff02d861
begin
	smplGraph = generateRandomGraph(10,10)
	# =SimpleGraph(10) # vertices with no edges
	# add_vertex!(smplGraph)
	# add_edge!(smplGraph, 3, 11)
	# # g2=SimpleDiGraph(10)
	graphplot(smplGraph, names=1:10, 
		markersize = 0.4,
		curvature_scalar=0.1)
	
end

# ╔═╡ b9775f8b-4515-4727-8001-b450d1ac14e0
dijkstra_shortest_paths(smplGraph,2)

# ╔═╡ 950c6ecc-ff34-4016-a5b9-cb927494a97a
Matrix(adjacency_matrix(smplGraph))

# ╔═╡ 515f9db1-7cca-47a8-b2d9-da7959aa4833
begin
	elist = [(1,2),(2,3),(2,4),(3,4),(4,1),(1,5)]
	
	g2 = SimpleGraph(Graphs.SimpleEdge.(reverse.(elist)))
	graphplot(g2,names=1:vertices(g2)[end])
	reverse.(elist)
end

# ╔═╡ 06ac3b4b-5ddd-4dac-96f7-788bd3adecec
cycle_basis(g2)

# ╔═╡ a20392d7-5324-458c-9afe-2a5f3f010d6a
md"""
# Data Science

We start with loading the required packages and reading in the `CSV` file to a `DataFrame`:
```julia
using CSV
using DataFrames
using Dates
using Plots
```
We will also use `Downloads` package to download the data. The data is for USA Airport Dataset available from `kaggle` [here](https://www.kaggle.com/datasets/flashgordon/usa-airport-dataset).
"""

# ╔═╡ efe9c0cf-b40d-4078-809a-a3b9650e91b2
begin
	raw_data = Downloads.download("https://www.dropbox.com/scl/fi/hb0sq53m2isd5cd5suqyp/Airports2.csv?rlkey=l1ggqiy8078bpya4casabokeg&raw=1")
	
end

# ╔═╡ 4f0f43e0-14e4-40ed-834f-7638d7ca4281
df = CSV.read(raw_data,DataFrame,missingstring="NA")

# ╔═╡ 69245bbd-1b9d-4e69-b3cc-13513ad3f745
md"Let us now get some summary statistics of our data set using the `describe` function"

# ╔═╡ 611e847c-571e-4c4f-aca7-fc2b697fe96e
describe(df)

# ╔═╡ d4441a61-6464-4ab0-808a-05d9e28e2c13
md"""
From the source `kaggle`, the data consists of the following columns:
1. __:Origin_airport__: Three letter airport code of the origin airport
2. __:Destination_airport__: Three letter airport code of the destination airport
3. __:Origin_city__: Origin city name
4. __:Destination_city__: Destination city name
5. __:Passengers__: Number of passengers transported from origin to destination
6. __:Seats__: Number of seats available on flights from origin to destination
7. __:Flights__: Number of flights between origin and destination (multiple records for one month, many with flights > 1)
8. __:Distance__: Distance (to nearest mile) flown between origin and destination
9. __:Fly_date__: The date (yyyymm) of flight
10. __:Origin_population__: Origin city's population as reported by US Census
11. __:Destination_population__: Destination city's population as reported by US Census
"""

# ╔═╡ 1a279163-a7e8-4b83-959c-d0e5d7be70e0
md"Let's find out more about our data"

# ╔═╡ 42223b0a-20d0-490b-a017-dc647fc22598
size(df)

# ╔═╡ 58178d78-99dc-4ee0-972b-286103ad64f4
cm"""
The data consists of 

- $(nrow(df)) rows

- $(ncol(df))  cols

- The names of the columns as string: $(join(names(df),",\n"))
"""

# ╔═╡ 042a8c10-0912-4118-9d09-1b47a6a120ba
# number of rows
nrow(df)

# ╔═╡ b1b79083-e717-4bb4-973b-092cc4559b3a
# number of cols
ncol(df)

# ╔═╡ 42603be5-8bcd-48a2-a124-cb93b866f474
# names of the columns are
names(df)

# ╔═╡ afc96979-b027-417e-896b-1ebc5c162e74
# names of the columns (as Symbols) are
propertynames(df)

# ╔═╡ fcd52eda-29c0-4000-a4f3-3e4109c48dd4
md"""
In particular note that `CSV.jl` correctly idenfitied `:Fly_date` column as being a `Date` type.

When we investigate the summary statistics we note that there are flights that potentially have 0 passengers, 0 seats, or 0 flights.

In practice if you get such data it is good to investigate it, as it shows some potential data quality issues.

So, let us investigate it:
"""

# ╔═╡ c0ce024b-7d35-493a-8a60-d5398111ef17
df |>
    x -> select(x, :Passengers, :Seats, :Flights) |>
    x -> mapcols(ByRow(>(0)), x) |> # or: mapcols(ByRow( x -> x > 0 ), _ )
    x-> groupby(x,:, sort=true) |>
    x-> combine(x, nrow, proprow)
# we are using the pipe operator `|>` 
# let
# 	df1 = select(df, :Passengers, :Seats, :Flights)
# 	df2 = mapcols(ByRow(>(0)), df1)
# 	df3 = groupby(df2,:, sort=true)
# 	df4 = combine(df3, nrow, proprow)
# end

# ╔═╡ f0e47e84-dd1f-4cce-98d7-1e675219fedb
md"""
Now going to our results - some of entries can be explained, like 0 passenges, but some seats and some flights (I guess it means that just no one took some flight).

However cases like some passengers, but 0 seats and 0 flights are probably a mistake in data (we have 7 rows that have this combination of values).

Let us try to find these 7 rows in two ways:
"""

# ╔═╡ c01141cc-5373-4027-92c4-acbeee56ad18
# 1 using `filter`
filter(row->row.Passengers>0 && row.Seats==0 && row.Flights==0, df)

# ╔═╡ 5e4428d2-11e1-43de-8492-fa81a0205c16
# 2 using subset
subset(df, :Passengers=>ByRow(>(0)), :Seats=>ByRow(==(0)), :Flights=> ByRow(==(0)))

# ╔═╡ 6b11adc4-e829-4712-9bb9-86c0c1891627
df2 = filter(row->row.Passengers==0 || row.Seats>0 || row.Flights>0, df) 


# ╔═╡ 76e6efcb-0528-4016-a9ef-7d3154b82810
md"""
Now let us move to another analysis.

We want to get an information about the occupancy of each flight. It can be calculated as ratio of the number of passengers and number of seats time number of flights. 
```math
\text{occupancy} = \frac{\text{passengers}}{\text{seats}+\text{flights}}
```
The problem is that if there are ``0`` seats or flights we would be dividing by ``0`` and get a NaN result. We prefer to get a missing value in this case. Therefore first define a helper function:
"""

# ╔═╡ 63e25db5-69af-4809-96c7-fb31cfa20908
function get_occupied(passengers, seats, flights)
    if seats == 0 || flights == 0
        return missing
    else
        return passengers / (seats * flights)
    end
end

# ╔═╡ 39c654fa-d312-476c-b5e9-8834314bab04
md"""
and now we use it to add a new column to our data frame. Additionally we create three new columns:

1. __:ost__ : state of the origin city
2. __:dst__ : state of the destination city
3. __:year__ : year of flight
"""

# ╔═╡ 8c23c939-b5a4-4bf4-bcef-a260f721a36f
# year is available through Dates package
df3 = transform(df,
	[:Passengers, :Seats, :Flights] => ByRow(get_occupied) => :occupied,[:Origin_city, :Destination_city] .=> ByRow(x -> last(x, 2)) .=> [:ost, :dst],
                :Fly_date => ByRow(year) => :year)

# ╔═╡ 7ef7e44a-27ae-4476-a62b-b055b0c94a72
md"""
Notice again that in the computation we used ByRow wrapper that instructs __`DataFrames.jl`__ to apply the function for each row of the passed data.

It is instructive to disect this pipeline step by step. When we said
```julia
[:Passengers, :Seats, :Flights] => ByRow(get_occupied) => :occupied
```
remember that the __`get_occupied`__ function required ``3`` input arguments. The initial ```[:Passengers, :Seats, :Flights]``` selector makes sure we pass the required ``3`` columns, and in the correct order. Finally, having ```ByRow(get_occupied) => :occupied``` means that our function returns a single output vector, and we supply a single name, `:occupied` for it.

In the next statement, we wrote
```julia
[:Origin_city, :Destination_city] .=> ByRow(x -> last(x, 2)) .=> [:ost, :dst]
```
which looks similar, but has a crucial difference: the Pair operator `=>` is being broadcasted this time (note the `.` in front of the `=>`)! In simple words, here we will apply our transformation to each input column, outputting as well ``2`` columns (ensured by the second `.=>`). One noteworthy feature of `DataFrames.jl` is that the so-written components of a data pipeline are valid julia code (and not part of a package-specific DSL). For instance, you can evaluate this line in the REPL to investigate the transformation we are building in this step:
"""

# ╔═╡ b4a5d356-8261-40bb-8b81-3db8a7cbd750
 [:Origin_city, :Destination_city] .=> ByRow(x -> last(x, 2)) .=> [:ost, :dst]

# ╔═╡ 9efa7843-8ee2-4c5c-bd47-e29ac8f6200d
md"""
Finally, let's do some visualiziation by plotting the total number of passengers that flew by year
"""

# ╔═╡ 2eb4ac72-a1ce-4b3e-be5d-775d04336849
df3 |> 
	x-> groupby(x,:year, sort=true) |>
	x -> combine(x,:Passengers => sum=> :Total_Passengers) |> 
	x -> plot(x.year,x.Total_Passengers./10^6, legend=nothing,
			xlab="year", ylab="passengers (in millions)"
			)


# ╔═╡ 508ae61f-5523-4aab-aa97-5db2a9830368
md"""
In the following example we will want to find pairs of origin-destination states that have the highest occupancy:
"""

# ╔═╡ 341a5669-1788-4c18-b845-27126da0fbf0
# mean from Statistics pacakge
df4 = df3 |>
x -> groupby(x,[:ost,:dst]) |>
# x -> combine(x,:occupied => (y->mean(skipmissing(y))) => :occupied, :Passengers => sum) |>
x -> combine(x,:occupied => mean∘skipmissing => :occupied, :Passengers => sum) |>
x -> filter(y->isfinite(y.occupied),x)	|>
x -> sort(x,:occupied, rev=true)


# ╔═╡ 514a1c02-c35c-44d0-86ce-6ea0865656c0
begin

	function cite(paper, link)
		@htl("""
		<div style="display: flex; justify-content:space-between; flex-direction: row; gap: 10px;">
		
		<p style="margin-right: 10px;padding-right: 10px;">
		
		$paper
		
		</p>
		
		<p style="border-left: 2px solid red;">
		
		<a style="margin-left: 10px;padding-right: 10px;" href="$(link)" target="_blank" rel="noopener noreferrer">Source</a>
		
		</p>
		</div>
		""")
	end
end

# ╔═╡ 65db052f-db65-487a-8b74-b9155aedb769
cm"""

$(cite("Rackauckas, C., & Nie, Q. (2017). DifferentialEquations.jl--a performant and feature-rich ecosystem for solving differential equations in Julia. Journal of Open Research 
		Software, 5(1).","https://docs.sciml.ai/Overview/stable/"))

__`DifferentialEquations.jl`__ is by far the best free and open source differential equations solver (not just for Julia, for any language): it is orders of magnitude faster and has orders of mangitude more features than anything else out there. It can solve standard ODEs, Delay-DEs, stochastic DEs, PDEs, ADEs, event handling, 1000s of solvers for all tese DEs and many other features. It is the central part of a whole organization focused on scientific machine learning (SciML) and the basis for ModelingToolkit.jl, a library for building simulations from symbolic definitions.

Here we will focus on Ordinary Differential Equations (ODEs) solving and use the module OrdinaryDiffEq only.

__The general workflow for using the package is as follows:__

- Define a problem
- Solve the problem
- Analyze the output

"""

# ╔═╡ c4817356-86b9-4e04-bdc3-7f225f9e2809
cm"""
$(cite("Dixit, V. K., & Rackauckas, C. (2023). Optimization.jl: A Unified Optimization Package (Version v3.12.1). doi:10.5281/zenodo.7738525","https://docs.sciml.ai/Optimization/stable/"))

__`Optimization.jl`__ provides 
- the easiest way to create an optimization problem and solve it. 
- a uniform interface to >25 optimization libraries, hence 100+ optimization solvers encompassing almost all classes of optimization algorithms such as global, mixed-integer, non-convex, second-order local, constrained, etc. 
- the ability to choose an Automatic Differentiation (AD) backend by simply passing an argument to indicate the package to use and automatically generates the efficient derivatives of the objective and constraints while giving you the flexibility to switch between different AD engines as per your problem. Additionally, 

__`Optimization.jl`__ takes care of passing problem specific information to solvers that can leverage it such as the sparsity pattern of the hessian or constraint jacobian and the expression graph.

Install it by
```julia
import Pkg
Pkg.add("Optimization")
```
"""

# ╔═╡ ab64a9f2-6e57-4346-886f-5488c1aa328a
md"""
## `LinearSolve.jl`
$(cite("LinearSolve.jl: High-Performance Unified Linear 
Solvers","https://docs.sciml.ai/LinearSolve/stable/"))
```julia
using Pkg
Pkg.add("LinearSolve")
```
However we can also use the package __`LinearSolve.jl`__ which is a unified interface for the linear solving packages of Julia. It interfaces with other packages of the Julia ecosystem to make it easy to test alternative solver packages and pass small types to control algorithm swapping. It also interfaces with the ModelingToolkit.jl world of symbolic modeling to allow for automatically generating high-performance code.
"""

# ╔═╡ 598ef29a-d69f-4448-94da-d55c80cdc35d
md"""# Nonlinear Solvers
$(cite("NonlinearSolve.jl: High-Performance Unified Nonlinear Solvers","https://docs.sciml.ai/NonlinearSolve/stable/"))
__Installation__
```julia
using Pkg
Pkg.add("NonlinearSolve")
```

A nonlinear system ``f(u)=0`` is specified by defining a function ``f(u,p)``, where ``p`` are the parameters of the system. 
## Example 1
Solve the vector equation ``f(u)=u^2−p`` for a vector of equations. Here ``u\in \mathbb{R}^2``
"""

# ╔═╡ 08c5a78a-bdc9-452a-a918-64ece0c2378e
md"""
# Symbolic Computation
$(cite("Gowda, S., Ma, Y., Cheli, A., Gwozdz, M., Shah, V. B., Edelman, A., & Rackauckas, C. (2021). High-performance symbolic-numerics via multiple dispatch. arXiv Preprint arXiv:2105. 03949.","https://docs.sciml.ai/Symbolics/stable/"))
"""

# ╔═╡ 604a1d3a-4111-40a0-a69d-a9f2fc279acc
md"""
# Graph Theory
$(cite("JuliaGraphs","https://juliagraphs.org/"))

The central package of the ecosystem is __`Graphs.jl`__. It contains a standard graph interface and some basic types for unweighted graphs, as well as a set of combinatorial algorithms like shortest paths.

__Installation__

```julia
import Pkg
Pkg.add("Graphs.jl)
```
and for Visualization we install __`GraphRecipes.jl`__ as well.

Let's start by creating a path graph and answer some questions about it.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
CSV = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
CommonMark = "a80b9123-70ca-4bc0-993e-6e3bcb318db6"
DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
Dates = "ade2ca70-3891-5945-98fb-dc099432e06a"
DifferentialEquations = "0c46a032-eb83-5123-abaf-570d42b7fbaa"
Downloads = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
ForwardDiff = "f6369f11-7733-5829-9624-2563aa707210"
GraphRecipes = "bd48cda9-67a9-57be-86fa-5b3c104eda73"
Graphs = "86223c79-3864-5bf0-83f7-82e725a168b6"
HypertextLiteral = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
LaTeXStrings = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
Latexify = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
LinearSolve = "7ed4a6bd-45f5-4d41-b270-4a48e9bafcae"
NonlinearSolve = "8913a72c-1f9b-4ce2-8d82-65094dcecaec"
Optimization = "7f7a1694-90dd-40f0-9382-eb1efda571ba"
OptimizationBBO = "3e6eede4-6085-4f62-9a71-46d9bc1eb92b"
OptimizationOptimJL = "36348300-93cb-4f02-beb5-3c3902f8871e"
PlotThemes = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
Random = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
SymbolicUtils = "d1185830-fcd6-423d-90d6-eec64667417b"
Symbolics = "0c5d862f-8b57-4792-8d23-62f2024744c7"

[compat]
CSV = "~0.10.11"
CommonMark = "~0.8.12"
DataFrames = "~1.6.1"
DifferentialEquations = "~7.11.0"
ForwardDiff = "~0.10.36"
GraphRecipes = "~0.5.12"
Graphs = "~1.9.0"
HypertextLiteral = "~0.9.5"
LaTeXStrings = "~1.3.1"
Latexify = "~0.16.1"
LinearSolve = "~2.21.2"
NonlinearSolve = "~2.8.2"
Optimization = "~3.19.3"
OptimizationBBO = "~0.1.5"
OptimizationOptimJL = "~0.1.14"
PlotThemes = "~3.1.0"
Plots = "~1.39.0"
PlutoUI = "~0.7.53"
SymbolicUtils = "~1.4.0"
Symbolics = "~5.11.0"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "ac0def3bd201b469b9d2e4d627ac95fa8e53d70d"

[[deps.ADTypes]]
git-tree-sha1 = "41c37aa88889c171f1300ceac1313c06e891d245"
uuid = "47edcb42-4c32-4615-8424-f2b9edc5f35b"
version = "0.2.6"

[[deps.AbstractAlgebra]]
deps = ["GroupsCore", "InteractiveUtils", "LinearAlgebra", "MacroTools", "Preferences", "Random", "RandomExtensions", "SparseArrays", "Test"]
git-tree-sha1 = "d7832de8cf7af26abac741f10372080ac6cb73df"
uuid = "c3fe647b-3220-5bb0-a1ea-a7954cac585d"
version = "0.34.7"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "91bd53c39b9cbfb5ef4b015e8b582d344532bd0a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.2.0"

[[deps.AbstractTrees]]
git-tree-sha1 = "faa260e4cb5aba097a73fab382dd4b5819d8ec8c"
uuid = "1520ce14-60c1-5f80-bbc7-55ef81b5835c"
version = "0.4.4"

[[deps.Accessors]]
deps = ["CompositionsBase", "ConstructionBase", "Dates", "InverseFunctions", "LinearAlgebra", "MacroTools", "Test"]
git-tree-sha1 = "a7055b939deae2455aa8a67491e034f735dd08d3"
uuid = "7d9f7c33-5ae7-4f3b-8dc6-eff91059b697"
version = "0.1.33"

    [deps.Accessors.extensions]
    AccessorsAxisKeysExt = "AxisKeys"
    AccessorsIntervalSetsExt = "IntervalSets"
    AccessorsStaticArraysExt = "StaticArrays"
    AccessorsStructArraysExt = "StructArrays"

    [deps.Accessors.weakdeps]
    AxisKeys = "94b1ba4f-4ee9-5380-92f1-94cde586c3c5"
    IntervalSets = "8197267c-284f-5f27-9208-e0e47529a953"
    Requires = "ae029012-a4dd-5104-9daa-d747884805df"
    StaticArrays = "90137ffa-7385-5640-81b9-e52037218182"
    StructArrays = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"

[[deps.Adapt]]
deps = ["LinearAlgebra", "Requires"]
git-tree-sha1 = "cde29ddf7e5726c9fb511f340244ea3481267608"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.7.2"
weakdeps = ["StaticArrays"]

    [deps.Adapt.extensions]
    AdaptStaticArraysExt = "StaticArrays"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.ArnoldiMethod]]
deps = ["LinearAlgebra", "Random", "StaticArrays"]
git-tree-sha1 = "62e51b39331de8911e4a7ff6f5aaf38a5f4cc0ae"
uuid = "ec485272-7323-5ecc-a04f-4719b315124d"
version = "0.2.0"

[[deps.ArrayInterface]]
deps = ["Adapt", "LinearAlgebra", "Requires", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "bbec08a37f8722786d87bedf84eae19c020c4efa"
uuid = "4fba245c-0d91-5ea0-9b3e-6abc04ee57a9"
version = "7.7.0"

    [deps.ArrayInterface.extensions]
    ArrayInterfaceBandedMatricesExt = "BandedMatrices"
    ArrayInterfaceBlockBandedMatricesExt = "BlockBandedMatrices"
    ArrayInterfaceCUDAExt = "CUDA"
    ArrayInterfaceGPUArraysCoreExt = "GPUArraysCore"
    ArrayInterfaceStaticArraysCoreExt = "StaticArraysCore"
    ArrayInterfaceTrackerExt = "Tracker"

    [deps.ArrayInterface.weakdeps]
    BandedMatrices = "aae01518-5342-5314-be14-df237901396f"
    BlockBandedMatrices = "ffab5731-97b5-5995-9138-79e8c1846df0"
    CUDA = "052768ef-5323-5732-b1bb-66c8b64840ba"
    GPUArraysCore = "46192b85-c4d5-4398-a991-12ede77f4527"
    StaticArraysCore = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
    Tracker = "9f7883ad-71c0-57eb-9f7f-b5c9e6d3789c"

[[deps.ArrayLayouts]]
deps = ["FillArrays", "LinearAlgebra"]
git-tree-sha1 = "b08a4043e1c14096ef8efe4dd97e07de5cacf240"
uuid = "4c555306-a7a7-4459-81d9-ec55ddd5c99a"
version = "1.4.5"
weakdeps = ["SparseArrays"]

    [deps.ArrayLayouts.extensions]
    ArrayLayoutsSparseArraysExt = "SparseArrays"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.AxisAlgorithms]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "WoodburyMatrices"]
git-tree-sha1 = "66771c8d21c8ff5e3a93379480a2307ac36863f7"
uuid = "13072b0f-2c55-5437-9ae7-d433b7a33950"
version = "1.0.1"

[[deps.BandedMatrices]]
deps = ["ArrayLayouts", "FillArrays", "LinearAlgebra", "PrecompileTools"]
git-tree-sha1 = "27baf04c642465b4289179f29bb7127f0673d4f1"
uuid = "aae01518-5342-5314-be14-df237901396f"
version = "1.4.0"
weakdeps = ["SparseArrays"]

    [deps.BandedMatrices.extensions]
    BandedMatricesSparseArraysExt = "SparseArrays"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Bijections]]
git-tree-sha1 = "c9b163bd832e023571e86d0b90d9de92a9879088"
uuid = "e2ed5e7c-b2de-5872-ae92-c73ca462fb04"
version = "0.1.6"

[[deps.BitFlags]]
git-tree-sha1 = "43b1a4a8f797c1cddadf60499a8a077d4af2cd2d"
uuid = "d1d4a3ce-64b1-5f1a-9ba4-7e7e69966f35"
version = "0.1.7"

[[deps.BitTwiddlingConvenienceFunctions]]
deps = ["Static"]
git-tree-sha1 = "0c5f81f47bbbcf4aea7b2959135713459170798b"
uuid = "62783981-4cbd-42fc-bca8-16325de8dc4b"
version = "0.1.5"

[[deps.BlackBoxOptim]]
deps = ["CPUTime", "Compat", "Distributed", "Distributions", "JSON", "LinearAlgebra", "Printf", "Random", "Requires", "SpatialIndexing", "StatsBase"]
git-tree-sha1 = "9c203a2515b5eeab8f2987614d2b1db83ef03542"
uuid = "a134a8b2-14d6-55f6-9291-3336d3ab0209"
version = "0.6.3"
weakdeps = ["HTTP", "Sockets"]

    [deps.BlackBoxOptim.extensions]
    BlackBoxOptimRealtimePlotServerExt = ["HTTP", "Sockets"]

[[deps.BoundaryValueDiffEq]]
deps = ["ADTypes", "Adapt", "ArrayInterface", "BandedMatrices", "ConcreteStructs", "DiffEqBase", "FastAlmostBandedMatrices", "ForwardDiff", "LinearAlgebra", "LinearSolve", "NonlinearSolve", "PreallocationTools", "PrecompileTools", "Preferences", "RecursiveArrayTools", "Reexport", "SciMLBase", "Setfield", "SparseArrays", "SparseDiffTools", "Tricks", "TruncatedStacktraces", "UnPack"]
git-tree-sha1 = "dd234c9a030350d5ff4c45761d6cad0cfb358cb9"
uuid = "764a87c0-6b3e-53db-9096-fe964310641d"
version = "5.6.0"

    [deps.BoundaryValueDiffEq.extensions]
    BoundaryValueDiffEqODEInterfaceExt = "ODEInterface"
    BoundaryValueDiffEqOrdinaryDiffEqExt = "OrdinaryDiffEq"

    [deps.BoundaryValueDiffEq.weakdeps]
    ODEInterface = "54ca160b-1b9f-5127-a996-1867f4bc2a2c"
    OrdinaryDiffEq = "1dea7af3-3e70-54e6-95c3-0bf5283fa5ed"

[[deps.Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[deps.CEnum]]
git-tree-sha1 = "389ad5c84de1ae7cf0e28e381131c98ea87d54fc"
uuid = "fa961155-64e5-5f13-b03f-caf6b980ea82"
version = "0.5.0"

[[deps.CPUSummary]]
deps = ["CpuId", "IfElse", "PrecompileTools", "Static"]
git-tree-sha1 = "601f7e7b3d36f18790e2caf83a882d88e9b71ff1"
uuid = "2a0fbf3d-bb9c-48f3-b0a9-814d99fd7ab9"
version = "0.2.4"

[[deps.CPUTime]]
git-tree-sha1 = "2dcc50ea6a0a1ef6440d6eecd0fe3813e5671f45"
uuid = "a9c8d775-2e2e-55fc-8582-045d282d599e"
version = "1.0.0"

[[deps.CSV]]
deps = ["CodecZlib", "Dates", "FilePathsBase", "InlineStrings", "Mmap", "Parsers", "PooledArrays", "PrecompileTools", "SentinelArrays", "Tables", "Unicode", "WeakRefStrings", "WorkerUtilities"]
git-tree-sha1 = "44dbf560808d49041989b8a96cae4cffbeb7966a"
uuid = "336ed68f-0bac-5ca0-87d4-7b16caf5d00b"
version = "0.10.11"

[[deps.Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "CompilerSupportLibraries_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "4b859a208b2397a7a623a03449e4636bdb17bcf2"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+1"

[[deps.Calculus]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f641eb0a4f00c343bbc32346e1217b86f3ce9dad"
uuid = "49dc2e85-a5d0-5ad3-a950-438e2897f1b9"
version = "0.5.1"

[[deps.ChainRulesCore]]
deps = ["Compat", "LinearAlgebra"]
git-tree-sha1 = "2118cb2765f8197b08e5958cdd17c165427425ee"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "1.19.0"
weakdeps = ["SparseArrays"]

    [deps.ChainRulesCore.extensions]
    ChainRulesCoreSparseArraysExt = "SparseArrays"

[[deps.CloseOpenIntervals]]
deps = ["Static", "StaticArrayInterface"]
git-tree-sha1 = "70232f82ffaab9dc52585e0dd043b5e0c6b714f1"
uuid = "fb6a15b2-703c-40df-9091-08a04967cfa9"
version = "0.1.12"

[[deps.CodecZlib]]
deps = ["TranscodingStreams", "Zlib_jll"]
git-tree-sha1 = "cd67fc487743b2f0fd4380d4cbd3a24660d0eec8"
uuid = "944b1d66-785c-5afd-91f1-9de20f533193"
version = "0.7.3"

[[deps.ColorSchemes]]
deps = ["ColorTypes", "ColorVectorSpace", "Colors", "FixedPointNumbers", "PrecompileTools", "Random"]
git-tree-sha1 = "67c1f244b991cad9b0aa4b7540fb758c2488b129"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.24.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "eb7f0f8307f71fac7c606984ea5fb2817275d6e4"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.4"

[[deps.ColorVectorSpace]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "Requires", "Statistics", "TensorCore"]
git-tree-sha1 = "a1f44953f2382ebb937d60dafbe2deea4bd23249"
uuid = "c3611d14-8923-5661-9e6a-0046d554d3a4"
version = "0.10.0"
weakdeps = ["SpecialFunctions"]

    [deps.ColorVectorSpace.extensions]
    SpecialFunctionsExt = "SpecialFunctions"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "fc08e5930ee9a4e03f84bfb5211cb54e7769758a"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.10"

[[deps.Combinatorics]]
git-tree-sha1 = "08c8b6831dc00bfea825826be0bc8336fc369860"
uuid = "861a8166-3701-5b0c-9a16-15d98fcdc6aa"
version = "1.0.2"

[[deps.CommonMark]]
deps = ["Crayons", "JSON", "PrecompileTools", "URIs"]
git-tree-sha1 = "532c4185d3c9037c0237546d817858b23cf9e071"
uuid = "a80b9123-70ca-4bc0-993e-6e3bcb318db6"
version = "0.8.12"

[[deps.CommonSolve]]
git-tree-sha1 = "0eee5eb66b1cf62cd6ad1b460238e60e4b09400c"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.4"

[[deps.CommonSubexpressions]]
deps = ["MacroTools", "Test"]
git-tree-sha1 = "7b8a93dba8af7e3b42fecabf646260105ac373f7"
uuid = "bbf7d656-a473-5ed7-a52c-81e309532950"
version = "0.3.0"

[[deps.Compat]]
deps = ["UUIDs"]
git-tree-sha1 = "8a62af3e248a8c4bad6b32cbbe663ae02275e32c"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.10.0"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+1"

[[deps.CompositeTypes]]
git-tree-sha1 = "02d2316b7ffceff992f3096ae48c7829a8aa0638"
uuid = "b152e2b5-7a66-4b01-a709-34e65c35f657"
version = "0.1.3"

[[deps.CompositionsBase]]
git-tree-sha1 = "802bb88cd69dfd1509f6670416bd4434015693ad"
uuid = "a33af91c-f02d-484b-be07-31d278c5ca2b"
version = "0.1.2"
weakdeps = ["InverseFunctions"]

    [deps.CompositionsBase.extensions]
    CompositionsBaseInverseFunctionsExt = "InverseFunctions"

[[deps.ConcreteStructs]]
git-tree-sha1 = "f749037478283d372048690eb3b5f92a79432b34"
uuid = "2569d6c7-a4a2-43d3-a901-331e8e4be471"
version = "0.2.3"

[[deps.ConcurrentUtilities]]
deps = ["Serialization", "Sockets"]
git-tree-sha1 = "8cfa272e8bdedfa88b6aefbbca7c19f1befac519"
uuid = "f0e56b4a-5159-44fe-b623-3e5288b988bb"
version = "2.3.0"

[[deps.ConsoleProgressMonitor]]
deps = ["Logging", "ProgressMeter"]
git-tree-sha1 = "3ab7b2136722890b9af903859afcf457fa3059e8"
uuid = "88cd18e8-d9cc-4ea6-8889-5259c0d15c8b"
version = "0.1.2"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "c53fc348ca4d40d7b371e71fd52251839080cbc9"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.5.4"
weakdeps = ["IntervalSets", "StaticArrays"]

    [deps.ConstructionBase.extensions]
    ConstructionBaseIntervalSetsExt = "IntervalSets"
    ConstructionBaseStaticArraysExt = "StaticArrays"

[[deps.Contour]]
git-tree-sha1 = "d05d9e7b7aedff4e5b51a029dced05cfb6125781"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.6.2"

[[deps.CpuId]]
deps = ["Markdown"]
git-tree-sha1 = "fcbb72b032692610bfbdb15018ac16a36cf2e406"
uuid = "adafc99b-e345-5852-983c-f28acb93d879"
version = "0.3.1"

[[deps.Crayons]]
git-tree-sha1 = "249fe38abf76d48563e2f4556bebd215aa317e15"
uuid = "a8cc5b0e-0ffa-5ad4-8c14-923d3ee1735f"
version = "4.1.1"

[[deps.DataAPI]]
git-tree-sha1 = "8da84edb865b0b5b0100c0666a9bc9a0b71c553c"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.15.0"

[[deps.DataFrames]]
deps = ["Compat", "DataAPI", "DataStructures", "Future", "InlineStrings", "InvertedIndices", "IteratorInterfaceExtensions", "LinearAlgebra", "Markdown", "Missings", "PooledArrays", "PrecompileTools", "PrettyTables", "Printf", "REPL", "Random", "Reexport", "SentinelArrays", "SortingAlgorithms", "Statistics", "TableTraits", "Tables", "Unicode"]
git-tree-sha1 = "04c738083f29f86e62c8afc341f0967d8717bdb8"
uuid = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
version = "1.6.1"

[[deps.DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "3dbd312d370723b6bb43ba9d02fc36abade4518d"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.15"

[[deps.DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DelayDiffEq]]
deps = ["ArrayInterface", "DataStructures", "DiffEqBase", "LinearAlgebra", "Logging", "OrdinaryDiffEq", "Printf", "RecursiveArrayTools", "Reexport", "SciMLBase", "SimpleNonlinearSolve", "SimpleUnPack"]
git-tree-sha1 = "e40378efd2af7658d0a0579aa9e15b17137368f4"
uuid = "bcd4f6db-9728-5f36-b5f7-82caef46ccdb"
version = "5.44.0"

[[deps.DelimitedFiles]]
deps = ["Mmap"]
git-tree-sha1 = "9e2f36d3c96a820c678f2f1f1782582fcf685bae"
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"
version = "1.9.1"

[[deps.DiffEqBase]]
deps = ["ArrayInterface", "DataStructures", "DocStringExtensions", "EnumX", "EnzymeCore", "FastBroadcast", "ForwardDiff", "FunctionWrappers", "FunctionWrappersWrappers", "LinearAlgebra", "Logging", "Markdown", "MuladdMacro", "Parameters", "PreallocationTools", "PrecompileTools", "Printf", "RecursiveArrayTools", "Reexport", "SciMLBase", "SciMLOperators", "Setfield", "SparseArrays", "Static", "StaticArraysCore", "Statistics", "Tricks", "TruncatedStacktraces"]
git-tree-sha1 = "8775b80752e9656000ab3800adad8ee22c9cb8f6"
uuid = "2b5f629d-d688-5b77-993f-72d75c75574e"
version = "6.145.0"

    [deps.DiffEqBase.extensions]
    DiffEqBaseChainRulesCoreExt = "ChainRulesCore"
    DiffEqBaseDistributionsExt = "Distributions"
    DiffEqBaseEnzymeExt = ["ChainRulesCore", "Enzyme"]
    DiffEqBaseGeneralizedGeneratedExt = "GeneralizedGenerated"
    DiffEqBaseMPIExt = "MPI"
    DiffEqBaseMeasurementsExt = "Measurements"
    DiffEqBaseMonteCarloMeasurementsExt = "MonteCarloMeasurements"
    DiffEqBaseReverseDiffExt = "ReverseDiff"
    DiffEqBaseTrackerExt = "Tracker"
    DiffEqBaseUnitfulExt = "Unitful"

    [deps.DiffEqBase.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    Distributions = "31c24e10-a181-5473-b8eb-7969acd0382f"
    Enzyme = "7da242da-08ed-463a-9acd-ee780be4f1d9"
    GeneralizedGenerated = "6b9d7cbe-bcb9-11e9-073f-15a7a543e2eb"
    MPI = "da04e1cc-30fd-572f-bb4f-1f8673147195"
    Measurements = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
    MonteCarloMeasurements = "0987c9cc-fe09-11e8-30f0-b96dd679fdca"
    ReverseDiff = "37e2e3b7-166d-5795-8a7a-e32c996b4267"
    Tracker = "9f7883ad-71c0-57eb-9f7f-b5c9e6d3789c"
    Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[[deps.DiffEqCallbacks]]
deps = ["DataStructures", "DiffEqBase", "ForwardDiff", "Functors", "LinearAlgebra", "Markdown", "NLsolve", "Parameters", "RecipesBase", "RecursiveArrayTools", "SciMLBase", "StaticArraysCore"]
git-tree-sha1 = "d0b94b3694d55e7eedeee918e7daee9e3b873399"
uuid = "459566f4-90b8-5000-8ac3-15dfb0a30def"
version = "2.35.0"
weakdeps = ["OrdinaryDiffEq", "Sundials"]

[[deps.DiffEqNoiseProcess]]
deps = ["DiffEqBase", "Distributions", "GPUArraysCore", "LinearAlgebra", "Markdown", "Optim", "PoissonRandom", "QuadGK", "Random", "Random123", "RandomNumbers", "RecipesBase", "RecursiveArrayTools", "Requires", "ResettableStacks", "SciMLBase", "StaticArraysCore", "Statistics"]
git-tree-sha1 = "319377c927a4aa1f491228b2ac23f3554a3497c6"
uuid = "77a26b50-5914-5dd7-bc55-306e6241c503"
version = "5.20.0"

    [deps.DiffEqNoiseProcess.extensions]
    DiffEqNoiseProcessReverseDiffExt = "ReverseDiff"

    [deps.DiffEqNoiseProcess.weakdeps]
    ReverseDiff = "37e2e3b7-166d-5795-8a7a-e32c996b4267"

[[deps.DiffResults]]
deps = ["StaticArraysCore"]
git-tree-sha1 = "782dd5f4561f5d267313f23853baaaa4c52ea621"
uuid = "163ba53b-c6d8-5494-b064-1a9d43ac40c5"
version = "1.1.0"

[[deps.DiffRules]]
deps = ["IrrationalConstants", "LogExpFunctions", "NaNMath", "Random", "SpecialFunctions"]
git-tree-sha1 = "23163d55f885173722d1e4cf0f6110cdbaf7e272"
uuid = "b552c78f-8df3-52c6-915a-8e097449b14b"
version = "1.15.1"

[[deps.DifferentialEquations]]
deps = ["BoundaryValueDiffEq", "DelayDiffEq", "DiffEqBase", "DiffEqCallbacks", "DiffEqNoiseProcess", "JumpProcesses", "LinearAlgebra", "LinearSolve", "NonlinearSolve", "OrdinaryDiffEq", "Random", "RecursiveArrayTools", "Reexport", "SciMLBase", "SteadyStateDiffEq", "StochasticDiffEq", "Sundials"]
git-tree-sha1 = "19a5b6314715139ddefea4108a105bb9b90dc4fb"
uuid = "0c46a032-eb83-5123-abaf-570d42b7fbaa"
version = "7.11.0"

[[deps.Distances]]
deps = ["LinearAlgebra", "Statistics", "StatsAPI"]
git-tree-sha1 = "66c4c81f259586e8f002eacebc177e1fb06363b0"
uuid = "b4f34e82-e78d-54a5-968a-f98e89d6e8f7"
version = "0.10.11"
weakdeps = ["ChainRulesCore", "SparseArrays"]

    [deps.Distances.extensions]
    DistancesChainRulesCoreExt = "ChainRulesCore"
    DistancesSparseArraysExt = "SparseArrays"

[[deps.Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[deps.Distributions]]
deps = ["FillArrays", "LinearAlgebra", "PDMats", "Printf", "QuadGK", "Random", "SpecialFunctions", "Statistics", "StatsAPI", "StatsBase", "StatsFuns"]
git-tree-sha1 = "9242eec9b7e2e14f9952e8ea1c7e31a50501d587"
uuid = "31c24e10-a181-5473-b8eb-7969acd0382f"
version = "0.25.104"

    [deps.Distributions.extensions]
    DistributionsChainRulesCoreExt = "ChainRulesCore"
    DistributionsDensityInterfaceExt = "DensityInterface"
    DistributionsTestExt = "Test"

    [deps.Distributions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    DensityInterface = "b429d917-457f-4dbc-8f4c-0cc954292b1d"
    Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.DomainSets]]
deps = ["CompositeTypes", "IntervalSets", "LinearAlgebra", "Random", "StaticArrays", "Statistics"]
git-tree-sha1 = "51b4b84d33ec5e0955b55ff4b748b99ce2c3faa9"
uuid = "5b8099bc-c8ec-5219-889f-1d9e522a28bf"
version = "0.6.7"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.DualNumbers]]
deps = ["Calculus", "NaNMath", "SpecialFunctions"]
git-tree-sha1 = "5837a837389fccf076445fce071c8ddaea35a566"
uuid = "fa6b7ba4-c1ee-5f82-b5fc-ecf0adba8f74"
version = "0.6.8"

[[deps.DynamicPolynomials]]
deps = ["Future", "LinearAlgebra", "MultivariatePolynomials", "MutableArithmetics", "Pkg", "Reexport", "Test"]
git-tree-sha1 = "fea68c84ba262b121754539e6ea0546146515d4f"
uuid = "7c1d4256-1411-5781-91ec-d7bc3513ac07"
version = "0.5.3"

[[deps.EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e3290f2d49e661fbd94046d7e3726ffcb2d41053"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.4+0"

[[deps.EnumX]]
git-tree-sha1 = "bdb1942cd4c45e3c678fd11569d5cccd80976237"
uuid = "4e289a0a-7415-4d19-859d-a7e5c4648b56"
version = "1.0.4"

[[deps.EnzymeCore]]
deps = ["Adapt"]
git-tree-sha1 = "2efe862de93cd87f620ad6ac9c9e3f83f1b2841b"
uuid = "f151be2c-9106-41f4-ab19-57ee4f262869"
version = "0.6.4"

[[deps.EpollShim_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "8e9441ee83492030ace98f9789a654a6d0b1f643"
uuid = "2702e6a9-849d-5ed8-8c21-79e8b8f9ee43"
version = "0.0.20230411+0"

[[deps.ExceptionUnwrapping]]
deps = ["Test"]
git-tree-sha1 = "e90caa41f5a86296e014e148ee061bd6c3edec96"
uuid = "460bff9d-24e4-43bc-9d9f-a8973cb893f4"
version = "0.1.9"

[[deps.Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "4558ab818dcceaab612d1bb8c19cee87eda2b83c"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.5.0+0"

[[deps.ExponentialUtilities]]
deps = ["Adapt", "ArrayInterface", "GPUArraysCore", "GenericSchur", "LinearAlgebra", "PrecompileTools", "Printf", "SparseArrays", "libblastrampoline_jll"]
git-tree-sha1 = "602e4585bcbd5a25bc06f514724593d13ff9e862"
uuid = "d4d017d3-3776-5f7e-afef-a10c40355c18"
version = "1.25.0"

[[deps.ExprTools]]
git-tree-sha1 = "27415f162e6028e81c72b82ef756bf321213b6ec"
uuid = "e2ba6199-217a-4e67-a87a-7c52f15ade04"
version = "0.1.10"

[[deps.Extents]]
git-tree-sha1 = "2140cd04483da90b2da7f99b2add0750504fc39c"
uuid = "411431e0-e8b7-467b-b5e0-f676ba4f2910"
version = "0.1.2"

[[deps.FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[deps.FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "PCRE2_jll", "Zlib_jll", "libaom_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "466d45dc38e15794ec7d5d63ec03d776a9aff36e"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.4+1"

[[deps.FastAlmostBandedMatrices]]
deps = ["ArrayInterface", "ArrayLayouts", "BandedMatrices", "ConcreteStructs", "LazyArrays", "LinearAlgebra", "MatrixFactorizations", "PrecompileTools", "Reexport"]
git-tree-sha1 = "178316d87f883f0702e79d9c83a8049484c9f619"
uuid = "9d29842c-ecb8-4973-b1e9-a27b1157504e"
version = "0.1.0"

[[deps.FastBroadcast]]
deps = ["ArrayInterface", "LinearAlgebra", "Polyester", "Static", "StaticArrayInterface", "StrideArraysCore"]
git-tree-sha1 = "a6e756a880fc419c8b41592010aebe6a5ce09136"
uuid = "7034ab61-46d4-4ed7-9d0f-46aef9175898"
version = "0.2.8"

[[deps.FastClosures]]
git-tree-sha1 = "acebe244d53ee1b461970f8910c235b259e772ef"
uuid = "9aa1b823-49e4-5ca5-8b0f-3971ec8bab6a"
version = "0.3.2"

[[deps.FastLapackInterface]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "b12f05108e405dadcc2aff0008db7f831374e051"
uuid = "29a986be-02c6-4525-aec4-84b980013641"
version = "2.0.0"

[[deps.FilePathsBase]]
deps = ["Compat", "Dates", "Mmap", "Printf", "Test", "UUIDs"]
git-tree-sha1 = "9f00e42f8d99fdde64d40c8ea5d14269a2e2c1aa"
uuid = "48062228-2e41-5def-b9a4-89aafe57970f"
version = "0.9.21"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FillArrays]]
deps = ["LinearAlgebra", "Random"]
git-tree-sha1 = "5b93957f6dcd33fc343044af3d48c215be2562f1"
uuid = "1a297f60-69ca-5386-bcde-b61e274b549b"
version = "1.9.3"
weakdeps = ["PDMats", "SparseArrays", "Statistics"]

    [deps.FillArrays.extensions]
    FillArraysPDMatsExt = "PDMats"
    FillArraysSparseArraysExt = "SparseArrays"
    FillArraysStatisticsExt = "Statistics"

[[deps.FiniteDiff]]
deps = ["ArrayInterface", "LinearAlgebra", "Requires", "Setfield", "SparseArrays"]
git-tree-sha1 = "c6e4a1fbe73b31a3dea94b1da449503b8830c306"
uuid = "6a86dc24-6348-571c-b903-95158fe2bd41"
version = "2.21.1"

    [deps.FiniteDiff.extensions]
    FiniteDiffBandedMatricesExt = "BandedMatrices"
    FiniteDiffBlockBandedMatricesExt = "BlockBandedMatrices"
    FiniteDiffStaticArraysExt = "StaticArrays"

    [deps.FiniteDiff.weakdeps]
    BandedMatrices = "aae01518-5342-5314-be14-df237901396f"
    BlockBandedMatrices = "ffab5731-97b5-5995-9138-79e8c1846df0"
    StaticArrays = "90137ffa-7385-5640-81b9-e52037218182"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[deps.Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[deps.Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[deps.ForwardDiff]]
deps = ["CommonSubexpressions", "DiffResults", "DiffRules", "LinearAlgebra", "LogExpFunctions", "NaNMath", "Preferences", "Printf", "Random", "SpecialFunctions"]
git-tree-sha1 = "cf0fe81336da9fb90944683b8c41984b08793dad"
uuid = "f6369f11-7733-5829-9624-2563aa707210"
version = "0.10.36"
weakdeps = ["StaticArrays"]

    [deps.ForwardDiff.extensions]
    ForwardDiffStaticArraysExt = "StaticArrays"

[[deps.FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Zlib_jll"]
git-tree-sha1 = "d8db6a5a2fe1381c1ea4ef2cab7c69c2de7f9ea0"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.13.1+0"

[[deps.FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[deps.FunctionWrappers]]
git-tree-sha1 = "d62485945ce5ae9c0c48f124a84998d755bae00e"
uuid = "069b7b12-0de2-55c6-9aab-29f3d0a68a2e"
version = "1.1.3"

[[deps.FunctionWrappersWrappers]]
deps = ["FunctionWrappers"]
git-tree-sha1 = "b104d487b34566608f8b4e1c39fb0b10aa279ff8"
uuid = "77dc65aa-8811-40c2-897b-53d922fa7daf"
version = "0.1.3"

[[deps.Functors]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "9a68d75d466ccc1218d0552a8e1631151c569545"
uuid = "d9f16b24-f501-4c13-a1f2-28368ffc5196"
version = "0.4.5"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "d972031d28c8c8d9d7b41a536ad7bb0c2579caca"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.8+0"

[[deps.GPUArraysCore]]
deps = ["Adapt"]
git-tree-sha1 = "2d6ca471a6c7b536127afccfa7564b5b39227fe0"
uuid = "46192b85-c4d5-4398-a991-12ede77f4527"
version = "0.1.5"

[[deps.GR]]
deps = ["Artifacts", "Base64", "DelimitedFiles", "Downloads", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Preferences", "Printf", "Random", "Serialization", "Sockets", "TOML", "Tar", "Test", "UUIDs", "p7zip_jll"]
git-tree-sha1 = "27442171f28c952804dede8ff72828a96f2bfc1f"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.72.10"

[[deps.GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "FreeType2_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Qt6Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "025d171a2847f616becc0f84c8dc62fe18f0f6dd"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.72.10+0"

[[deps.GenericSchur]]
deps = ["LinearAlgebra", "Printf"]
git-tree-sha1 = "fb69b2a645fa69ba5f474af09221b9308b160ce6"
uuid = "c145ed77-6b09-5dd9-b285-bf645a82121e"
version = "0.5.3"

[[deps.GeoInterface]]
deps = ["Extents"]
git-tree-sha1 = "d4f85701f569584f2cff7ba67a137d03f0cfb7d0"
uuid = "cf35fbd7-0cd7-5166-be24-54bfbe79505f"
version = "1.3.3"

[[deps.GeometryBasics]]
deps = ["EarCut_jll", "Extents", "GeoInterface", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "424a5a6ce7c5d97cca7bcc4eac551b97294c54af"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.9"

[[deps.GeometryTypes]]
deps = ["ColorTypes", "FixedPointNumbers", "LinearAlgebra", "StaticArrays"]
git-tree-sha1 = "d796f7be0383b5416cd403420ce0af083b0f9b28"
uuid = "4d00f742-c7ba-57c2-abde-4428a4b178cb"
version = "0.8.5"

[[deps.Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[deps.Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE2_jll", "Zlib_jll"]
git-tree-sha1 = "e94c92c7bf4819685eb80186d51c43e71d4afa17"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.76.5+0"

[[deps.GraphRecipes]]
deps = ["AbstractTrees", "GeometryTypes", "Graphs", "InteractiveUtils", "Interpolations", "LinearAlgebra", "NaNMath", "NetworkLayout", "PlotUtils", "RecipesBase", "SparseArrays", "Statistics"]
git-tree-sha1 = "e5f13c467f99f6b348020369c519cd6c8b56f75d"
uuid = "bd48cda9-67a9-57be-86fa-5b3c104eda73"
version = "0.5.12"

[[deps.Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[deps.Graphs]]
deps = ["ArnoldiMethod", "Compat", "DataStructures", "Distributed", "Inflate", "LinearAlgebra", "Random", "SharedArrays", "SimpleTraits", "SparseArrays", "Statistics"]
git-tree-sha1 = "899050ace26649433ef1af25bc17a815b3db52b7"
uuid = "86223c79-3864-5bf0-83f7-82e725a168b6"
version = "1.9.0"

[[deps.Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[deps.Groebner]]
deps = ["AbstractAlgebra", "Combinatorics", "ExprTools", "Logging", "MultivariatePolynomials", "PrecompileTools", "PrettyTables", "Primes", "Printf", "Random", "SIMD", "TimerOutputs"]
git-tree-sha1 = "6b505ef15e55bdc5bb3ddbcfebdff1c9e67081e8"
uuid = "0b43b601-686d-58a3-8a1c-6623616c7cd4"
version = "0.5.1"

[[deps.GroupsCore]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "6df9cd6ee79fc59feab33f63a1b3c9e95e2461d5"
uuid = "d5909c97-4eac-4ecc-a3dc-fdd0858a4120"
version = "0.4.2"

[[deps.HTTP]]
deps = ["Base64", "CodecZlib", "ConcurrentUtilities", "Dates", "ExceptionUnwrapping", "Logging", "LoggingExtras", "MbedTLS", "NetworkOptions", "OpenSSL", "Random", "SimpleBufferStream", "Sockets", "URIs", "UUIDs"]
git-tree-sha1 = "5eab648309e2e060198b45820af1a37182de3cce"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "1.10.0"

[[deps.HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "129acf094d168394e80ee1dc4bc06ec835e510a3"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+1"

[[deps.HostCPUFeatures]]
deps = ["BitTwiddlingConvenienceFunctions", "IfElse", "Libdl", "Static"]
git-tree-sha1 = "eb8fed28f4994600e29beef49744639d985a04b2"
uuid = "3e5b6fbb-0976-4d2c-9146-d79de83f2fb0"
version = "0.1.16"

[[deps.HypergeometricFunctions]]
deps = ["DualNumbers", "LinearAlgebra", "OpenLibm_jll", "SpecialFunctions"]
git-tree-sha1 = "f218fe3736ddf977e0e772bc9a586b2383da2685"
uuid = "34004b35-14d8-5ef3-9330-4cdb6864b03a"
version = "0.3.23"

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

[[deps.IfElse]]
git-tree-sha1 = "debdd00ffef04665ccbb3e150747a77560e8fad1"
uuid = "615f187c-cbe4-4ef1-ba3b-2fcf58d6d173"
version = "0.1.1"

[[deps.Inflate]]
git-tree-sha1 = "ea8031dea4aff6bd41f1df8f2fdfb25b33626381"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.4"

[[deps.InlineStrings]]
deps = ["Parsers"]
git-tree-sha1 = "9cc2baf75c6d09f9da536ddf58eb2f29dedaf461"
uuid = "842dd82b-1e85-43dc-bf29-5d0ee9dffc48"
version = "1.4.0"

[[deps.IntegerMathUtils]]
git-tree-sha1 = "b8ffb903da9f7b8cf695a8bead8e01814aa24b30"
uuid = "18e54dd8-cb9d-406c-a71d-865a43cbb235"
version = "0.1.2"

[[deps.IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "5fdf2fe6724d8caabf43b557b84ce53f3b7e2f6b"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2024.0.2+0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.Interpolations]]
deps = ["Adapt", "AxisAlgorithms", "ChainRulesCore", "LinearAlgebra", "OffsetArrays", "Random", "Ratios", "Requires", "SharedArrays", "SparseArrays", "StaticArrays", "WoodburyMatrices"]
git-tree-sha1 = "721ec2cf720536ad005cb38f50dbba7b02419a15"
uuid = "a98d9a8b-a2ab-59e6-89dd-64a1c18fca59"
version = "0.14.7"

[[deps.IntervalSets]]
deps = ["Dates", "Random"]
git-tree-sha1 = "3d8866c029dd6b16e69e0d4a939c4dfcb98fac47"
uuid = "8197267c-284f-5f27-9208-e0e47529a953"
version = "0.7.8"
weakdeps = ["Statistics"]

    [deps.IntervalSets.extensions]
    IntervalSetsStatisticsExt = "Statistics"

[[deps.InverseFunctions]]
deps = ["Test"]
git-tree-sha1 = "68772f49f54b479fa88ace904f6127f0a3bb2e46"
uuid = "3587e190-3f89-42d0-90ee-14403ec27112"
version = "0.1.12"

[[deps.InvertedIndices]]
git-tree-sha1 = "0dc7b50b8d436461be01300fd8cd45aa0274b038"
uuid = "41ab1584-1d38-5bbf-9106-f11c6c58b48f"
version = "1.3.0"

[[deps.IrrationalConstants]]
git-tree-sha1 = "630b497eafcc20001bba38a4651b327dcfc491d2"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.2"

[[deps.IterTools]]
git-tree-sha1 = "274c38bd733f9d29036d0a73658fff1dc1d3a065"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.9.0"

[[deps.IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[deps.JLFzf]]
deps = ["Pipe", "REPL", "Random", "fzf_jll"]
git-tree-sha1 = "9fb0b890adab1c0a4a475d4210d51f228bfc250d"
uuid = "1019f520-868f-41f5-a6de-eb00f4b6a39c"
version = "0.1.6"

[[deps.JLLWrappers]]
deps = ["Artifacts", "Preferences"]
git-tree-sha1 = "7e5d6779a1e09a36db2a7b6cff50942a0a7d0fca"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.5.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

[[deps.JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "6f2675ef130a300a112286de91973805fcc5ffbc"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.91+0"

[[deps.JumpProcesses]]
deps = ["ArrayInterface", "DataStructures", "DiffEqBase", "DocStringExtensions", "FunctionWrappers", "Graphs", "LinearAlgebra", "Markdown", "PoissonRandom", "Random", "RandomNumbers", "RecursiveArrayTools", "Reexport", "SciMLBase", "StaticArrays", "UnPack"]
git-tree-sha1 = "c451feb97251965a9fe40bacd62551a72cc5902c"
uuid = "ccbc3e58-028d-4f4c-8cd5-9ae44345cda5"
version = "9.10.1"
weakdeps = ["FastBroadcast"]

    [deps.JumpProcesses.extensions]
    JumpProcessFastBroadcastExt = "FastBroadcast"

[[deps.KLU]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse_jll"]
git-tree-sha1 = "884c2968c2e8e7e6bf5956af88cb46aa745c854b"
uuid = "ef3ab10e-7fda-4108-b977-705223b18434"
version = "0.4.1"

[[deps.Krylov]]
deps = ["LinearAlgebra", "Printf", "SparseArrays"]
git-tree-sha1 = "8a6837ec02fe5fb3def1abc907bb802ef11a0729"
uuid = "ba0b0d4f-ebba-5204-a429-3ac8c609bfb7"
version = "0.9.5"

[[deps.LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[deps.LERC_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "bf36f528eec6634efc60d7ec062008f171071434"
uuid = "88015f11-f218-50d7-93a8-a6af411a945d"
version = "3.0.0+1"

[[deps.LLVMOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f689897ccbe049adb19a065c495e75f372ecd42b"
uuid = "1d63c593-3942-5779-bab2-d838dc0a180e"
version = "15.0.4+0"

[[deps.LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[deps.LaTeXStrings]]
git-tree-sha1 = "50901ebc375ed41dbf8058da26f9de442febbbec"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.3.1"

[[deps.LabelledArrays]]
deps = ["ArrayInterface", "ChainRulesCore", "ForwardDiff", "LinearAlgebra", "MacroTools", "PreallocationTools", "RecursiveArrayTools", "StaticArrays"]
git-tree-sha1 = "f12f2225c999886b69273f84713d1b9cb66faace"
uuid = "2ee39098-c373-598a-b85f-a56591580800"
version = "1.15.0"

[[deps.LambertW]]
git-tree-sha1 = "c5ffc834de5d61d00d2b0e18c96267cffc21f648"
uuid = "984bce1d-4616-540c-a9ee-88d1112d94c9"
version = "0.4.6"

[[deps.Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "OrderedCollections", "Printf", "Requires"]
git-tree-sha1 = "f428ae552340899a935973270b8d98e5a31c49fe"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.16.1"

    [deps.Latexify.extensions]
    DataFramesExt = "DataFrames"
    SymEngineExt = "SymEngine"

    [deps.Latexify.weakdeps]
    DataFrames = "a93c6f00-e57d-5684-b7b6-d8193f3e46c0"
    SymEngine = "123dc426-2d89-5057-bbad-38513e3affd8"

[[deps.LatticeRules]]
deps = ["Random"]
git-tree-sha1 = "7f5b02258a3ca0221a6a9710b0a0a2e8fb4957fe"
uuid = "73f95e8e-ec14-4e6a-8b18-0d2e271c4e55"
version = "0.0.1"

[[deps.LayoutPointers]]
deps = ["ArrayInterface", "LinearAlgebra", "ManualMemory", "SIMDTypes", "Static", "StaticArrayInterface"]
git-tree-sha1 = "62edfee3211981241b57ff1cedf4d74d79519277"
uuid = "10f19ff3-798f-405d-979b-55457f8fc047"
version = "0.1.15"

[[deps.Lazy]]
deps = ["MacroTools"]
git-tree-sha1 = "1370f8202dac30758f3c345f9909b97f53d87d3f"
uuid = "50d2b5c4-7a5e-59d5-8109-a42b560f39c0"
version = "0.15.1"

[[deps.LazyArrays]]
deps = ["ArrayLayouts", "FillArrays", "LinearAlgebra", "MacroTools", "MatrixFactorizations", "SparseArrays"]
git-tree-sha1 = "9cfca23ab83b0dfac93cb1a1ef3331ab9fe596a5"
uuid = "5078a376-72f3-5289-bfd5-ec5146d43c02"
version = "1.8.3"
weakdeps = ["StaticArrays"]

    [deps.LazyArrays.extensions]
    LazyArraysStaticArraysExt = "StaticArrays"

[[deps.LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"

[[deps.LeftChildRightSiblingTrees]]
deps = ["AbstractTrees"]
git-tree-sha1 = "fb6803dafae4a5d62ea5cab204b1e657d9737e7f"
uuid = "1d6d02ad-be62-4b6b-8a6d-2f90e265016e"
version = "0.2.0"

[[deps.LevyArea]]
deps = ["LinearAlgebra", "Random", "SpecialFunctions"]
git-tree-sha1 = "56513a09b8e0ae6485f34401ea9e2f31357958ec"
uuid = "2d8b4e74-eb68-11e8-0fb9-d5eb67b50637"
version = "1.0.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.4.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.6.4+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[deps.Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[deps.Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "6f73d1dd803986947b2c750138528a999a6c7733"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.6.0+0"

[[deps.Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[deps.Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "f9557a255370125b405568f9767d6d195822a175"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.17.0+0"

[[deps.Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[deps.Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "LERC_jll", "Libdl", "XZ_jll", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "2da088d113af58221c52828a80378e16be7d037a"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.5.1+1"

[[deps.Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[deps.LineSearches]]
deps = ["LinearAlgebra", "NLSolversBase", "NaNMath", "Parameters", "Printf"]
git-tree-sha1 = "7bbea35cec17305fc70a0e5b4641477dc0789d9d"
uuid = "d3d80556-e9d4-5f37-9878-2ab0fcc64255"
version = "7.2.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LinearSolve]]
deps = ["ArrayInterface", "ConcreteStructs", "DocStringExtensions", "EnumX", "FastLapackInterface", "GPUArraysCore", "InteractiveUtils", "KLU", "Krylov", "Libdl", "LinearAlgebra", "MKL_jll", "PrecompileTools", "Preferences", "RecursiveFactorization", "Reexport", "Requires", "SciMLBase", "SciMLOperators", "Setfield", "SparseArrays", "Sparspak", "StaticArraysCore", "UnPack"]
git-tree-sha1 = "ebdc72aa2f1ccbb9f9dd1e85698145024b762ac3"
uuid = "7ed4a6bd-45f5-4d41-b270-4a48e9bafcae"
version = "2.21.2"

    [deps.LinearSolve.extensions]
    LinearSolveBandedMatricesExt = "BandedMatrices"
    LinearSolveBlockDiagonalsExt = "BlockDiagonals"
    LinearSolveCUDAExt = "CUDA"
    LinearSolveEnzymeExt = ["Enzyme", "EnzymeCore"]
    LinearSolveFastAlmostBandedMatricesExt = ["FastAlmostBandedMatrices"]
    LinearSolveHYPREExt = "HYPRE"
    LinearSolveIterativeSolversExt = "IterativeSolvers"
    LinearSolveKernelAbstractionsExt = "KernelAbstractions"
    LinearSolveKrylovKitExt = "KrylovKit"
    LinearSolveMetalExt = "Metal"
    LinearSolvePardisoExt = "Pardiso"
    LinearSolveRecursiveArrayToolsExt = "RecursiveArrayTools"

    [deps.LinearSolve.weakdeps]
    BandedMatrices = "aae01518-5342-5314-be14-df237901396f"
    BlockDiagonals = "0a1fb500-61f7-11e9-3c65-f5ef3456f9f0"
    CUDA = "052768ef-5323-5732-b1bb-66c8b64840ba"
    Enzyme = "7da242da-08ed-463a-9acd-ee780be4f1d9"
    EnzymeCore = "f151be2c-9106-41f4-ab19-57ee4f262869"
    FastAlmostBandedMatrices = "9d29842c-ecb8-4973-b1e9-a27b1157504e"
    HYPRE = "b5ffcf37-a2bd-41ab-a3da-4bd9bc8ad771"
    IterativeSolvers = "42fd0dbc-a981-5370-80f2-aaf504508153"
    KernelAbstractions = "63c18a36-062a-441e-b654-da1e3ab1ce7c"
    KrylovKit = "0b1a1467-8014-51b9-945f-bf0ae24f4b77"
    Metal = "dde4c033-4e86-420c-a63e-0dd931031962"
    Pardiso = "46dd5b70-b6fb-5a00-ae2d-e8fea33afaf2"
    RecursiveArrayTools = "731186ca-8d62-57ce-b412-fbd966d074cd"

[[deps.LogExpFunctions]]
deps = ["DocStringExtensions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "7d6dd4e9212aebaeed356de34ccf262a3cd415aa"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.26"

    [deps.LogExpFunctions.extensions]
    LogExpFunctionsChainRulesCoreExt = "ChainRulesCore"
    LogExpFunctionsChangesOfVariablesExt = "ChangesOfVariables"
    LogExpFunctionsInverseFunctionsExt = "InverseFunctions"

    [deps.LogExpFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ChangesOfVariables = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.LoggingExtras]]
deps = ["Dates", "Logging"]
git-tree-sha1 = "c1dd6d7978c12545b4179fb6153b9250c96b0075"
uuid = "e6f89c97-d47a-5376-807f-9c37f3926c36"
version = "1.0.3"

[[deps.LoopVectorization]]
deps = ["ArrayInterface", "CPUSummary", "CloseOpenIntervals", "DocStringExtensions", "HostCPUFeatures", "IfElse", "LayoutPointers", "LinearAlgebra", "OffsetArrays", "PolyesterWeave", "PrecompileTools", "SIMDTypes", "SLEEFPirates", "Static", "StaticArrayInterface", "ThreadingUtilities", "UnPack", "VectorizationBase"]
git-tree-sha1 = "0f5648fbae0d015e3abe5867bca2b362f67a5894"
uuid = "bdcacae8-1622-11e9-2a5c-532679323890"
version = "0.12.166"
weakdeps = ["ChainRulesCore", "ForwardDiff", "SpecialFunctions"]

    [deps.LoopVectorization.extensions]
    ForwardDiffExt = ["ChainRulesCore", "ForwardDiff"]
    SpecialFunctionsExt = "SpecialFunctions"

[[deps.MIMEs]]
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl"]
git-tree-sha1 = "72dc3cf284559eb8f53aa593fe62cb33f83ed0c0"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2024.0.0+0"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "9ee1618cbf5240e6d4e0371d6f24065083f60c48"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.11"

[[deps.ManualMemory]]
git-tree-sha1 = "bcaef4fc7a0cfe2cba636d84cda54b5e4e4ca3cd"
uuid = "d125e4d3-2237-4719-b19c-fa641b8a4667"
version = "0.1.8"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MatrixFactorizations]]
deps = ["ArrayLayouts", "LinearAlgebra", "Printf", "Random"]
git-tree-sha1 = "78f6e33434939b0ac9ba1df81e6d005ee85a7396"
uuid = "a3b82374-2e81-5b9e-98ce-41277c0e4c87"
version = "2.1.0"

[[deps.MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "MozillaCACerts_jll", "NetworkOptions", "Random", "Sockets"]
git-tree-sha1 = "f512dc13e64e96f703fd92ce617755ee6b5adf0f"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.1.8"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+1"

[[deps.Measures]]
git-tree-sha1 = "c13304c81eec1ed3af7fc20e75fb6b26092a1102"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.2"

[[deps.Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "f66bdc5de519e8f8ae43bdc598782d35a25b1272"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.1.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.1.10"

[[deps.MuladdMacro]]
git-tree-sha1 = "cac9cc5499c25554cba55cd3c30543cff5ca4fab"
uuid = "46d2c3a1-f734-5fdb-9937-b9b9aeba4221"
version = "0.2.4"

[[deps.MultivariatePolynomials]]
deps = ["ChainRulesCore", "DataStructures", "LinearAlgebra", "MutableArithmetics"]
git-tree-sha1 = "6ffb234d6d7c866a75c1879d2099049d3a35a83a"
uuid = "102ac46a-7ee4-5c85-9060-abc95bfdeaa3"
version = "0.5.3"

[[deps.MutableArithmetics]]
deps = ["LinearAlgebra", "SparseArrays", "Test"]
git-tree-sha1 = "806eea990fb41f9b36f1253e5697aa645bf6a9f8"
uuid = "d8a4904e-b15c-11e9-3269-09a3773c0cb0"
version = "1.4.0"

[[deps.NLSolversBase]]
deps = ["DiffResults", "Distributed", "FiniteDiff", "ForwardDiff"]
git-tree-sha1 = "a0b464d183da839699f4c79e7606d9d186ec172c"
uuid = "d41bc354-129a-5804-8e4c-c37616107c6c"
version = "7.8.3"

[[deps.NLsolve]]
deps = ["Distances", "LineSearches", "LinearAlgebra", "NLSolversBase", "Printf", "Reexport"]
git-tree-sha1 = "019f12e9a1a7880459d0173c182e6a99365d7ac1"
uuid = "2774e3e8-f4cf-5e23-947b-6d7e65073b56"
version = "4.5.1"

[[deps.NaNMath]]
deps = ["OpenLibm_jll"]
git-tree-sha1 = "0877504529a3e5c3343c6f8b4c0381e57e4387e4"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "1.0.2"

[[deps.NetworkLayout]]
deps = ["GeometryBasics", "LinearAlgebra", "Random", "Requires", "StaticArrays"]
git-tree-sha1 = "91bb2fedff8e43793650e7a677ccda6e6e6e166b"
uuid = "46757867-2c16-5918-afeb-47bfcb05e46a"
version = "0.4.6"
weakdeps = ["Graphs"]

    [deps.NetworkLayout.extensions]
    NetworkLayoutGraphsExt = "Graphs"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.NonlinearSolve]]
deps = ["ADTypes", "ArrayInterface", "ConcreteStructs", "DiffEqBase", "EnumX", "FastBroadcast", "FiniteDiff", "ForwardDiff", "LineSearches", "LinearAlgebra", "LinearSolve", "PrecompileTools", "RecursiveArrayTools", "Reexport", "SciMLBase", "SciMLOperators", "SimpleNonlinearSolve", "SparseArrays", "SparseDiffTools", "StaticArraysCore", "UnPack"]
git-tree-sha1 = "6166ccd8f79c93c636ca61ab4cd18f555932563d"
uuid = "8913a72c-1f9b-4ce2-8d82-65094dcecaec"
version = "2.8.2"

    [deps.NonlinearSolve.extensions]
    NonlinearSolveBandedMatricesExt = "BandedMatrices"
    NonlinearSolveFastLevenbergMarquardtExt = "FastLevenbergMarquardt"
    NonlinearSolveLeastSquaresOptimExt = "LeastSquaresOptim"

    [deps.NonlinearSolve.weakdeps]
    BandedMatrices = "aae01518-5342-5314-be14-df237901396f"
    FastLevenbergMarquardt = "7a0df574-e128-4d35-8cbd-3d84502bf7ce"
    LeastSquaresOptim = "0fc2ff8b-aaa3-5acd-a817-1944a5e08891"

[[deps.OffsetArrays]]
git-tree-sha1 = "6a731f2b5c03157418a20c12195eb4b74c8f8621"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.13.0"
weakdeps = ["Adapt"]

    [deps.OffsetArrays.extensions]
    OffsetArraysAdaptExt = "Adapt"

[[deps.Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "887579a3eb005446d514ab7aeac5d1d027658b8f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+1"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+2"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+2"

[[deps.OpenSSL]]
deps = ["BitFlags", "Dates", "MozillaCACerts_jll", "OpenSSL_jll", "Sockets"]
git-tree-sha1 = "51901a49222b09e3743c65b8847687ae5fc78eb2"
uuid = "4d8831e6-92b7-49fb-bdf8-b643e874388c"
version = "1.4.1"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "cc6e1927ac521b659af340e0ca45828a3ffc748f"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.0.12+0"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Optim]]
deps = ["Compat", "FillArrays", "ForwardDiff", "LineSearches", "LinearAlgebra", "NLSolversBase", "NaNMath", "Parameters", "PositiveFactorizations", "Printf", "SparseArrays", "StatsBase"]
git-tree-sha1 = "01f85d9269b13fedc61e63cc72ee2213565f7a72"
uuid = "429524aa-4258-5aef-a3af-852621145aeb"
version = "1.7.8"

[[deps.Optimization]]
deps = ["ADTypes", "ArrayInterface", "ConsoleProgressMonitor", "DocStringExtensions", "LinearAlgebra", "Logging", "LoggingExtras", "Pkg", "Printf", "ProgressLogging", "Reexport", "Requires", "SciMLBase", "SparseArrays", "TerminalLoggers"]
git-tree-sha1 = "1aa7ffea6e171167e9cae620d749e16d5874414a"
uuid = "7f7a1694-90dd-40f0-9382-eb1efda571ba"
version = "3.19.3"

    [deps.Optimization.extensions]
    OptimizationEnzymeExt = "Enzyme"
    OptimizationFiniteDiffExt = "FiniteDiff"
    OptimizationForwardDiffExt = "ForwardDiff"
    OptimizationMTKExt = "ModelingToolkit"
    OptimizationReverseDiffExt = "ReverseDiff"
    OptimizationSparseDiffExt = ["SparseDiffTools", "Symbolics", "ReverseDiff"]
    OptimizationTrackerExt = "Tracker"
    OptimizationZygoteExt = "Zygote"

    [deps.Optimization.weakdeps]
    Enzyme = "7da242da-08ed-463a-9acd-ee780be4f1d9"
    FiniteDiff = "6a86dc24-6348-571c-b903-95158fe2bd41"
    ForwardDiff = "f6369f11-7733-5829-9624-2563aa707210"
    ModelingToolkit = "961ee093-0014-501f-94e3-6117800e7a78"
    ReverseDiff = "37e2e3b7-166d-5795-8a7a-e32c996b4267"
    SparseDiffTools = "47a9eef4-7e08-11e9-0b38-333d64bd3804"
    Symbolics = "0c5d862f-8b57-4792-8d23-62f2024744c7"
    Tracker = "9f7883ad-71c0-57eb-9f7f-b5c9e6d3789c"
    Zygote = "e88e6eb3-aa80-5325-afca-941959d7151f"

[[deps.OptimizationBBO]]
deps = ["BlackBoxOptim", "Optimization", "Reexport"]
git-tree-sha1 = "939b19f2c213901aa544d1fd50e5f0065e66127c"
uuid = "3e6eede4-6085-4f62-9a71-46d9bc1eb92b"
version = "0.1.5"

[[deps.OptimizationOptimJL]]
deps = ["Optim", "Optimization", "Reexport", "SparseArrays"]
git-tree-sha1 = "bea24fb320d58cb639e3cbc63f8eedde6c667bd3"
uuid = "36348300-93cb-4f02-beb5-3c3902f8871e"
version = "0.1.14"

[[deps.Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[deps.OrderedCollections]]
git-tree-sha1 = "2e73fe17cac3c62ad1aebe70d44c963c3cfdc3e3"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.6.2"

[[deps.OrdinaryDiffEq]]
deps = ["ADTypes", "Adapt", "ArrayInterface", "DataStructures", "DiffEqBase", "DocStringExtensions", "ExponentialUtilities", "FastBroadcast", "FastClosures", "FiniteDiff", "ForwardDiff", "FunctionWrappersWrappers", "IfElse", "InteractiveUtils", "LineSearches", "LinearAlgebra", "LinearSolve", "Logging", "LoopVectorization", "MacroTools", "MuladdMacro", "NLsolve", "NonlinearSolve", "Polyester", "PreallocationTools", "PrecompileTools", "Preferences", "RecursiveArrayTools", "Reexport", "SciMLBase", "SciMLNLSolve", "SciMLOperators", "SimpleNonlinearSolve", "SimpleUnPack", "SparseArrays", "SparseDiffTools", "StaticArrayInterface", "StaticArrays", "TruncatedStacktraces"]
git-tree-sha1 = "5f9e7ce227d0e447c3803cc05ef5d8f75f84b9ea"
uuid = "1dea7af3-3e70-54e6-95c3-0bf5283fa5ed"
version = "6.59.3"

[[deps.PCRE2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "efcefdf7-47ab-520b-bdef-62a2eaa19f15"
version = "10.42.0+1"

[[deps.PDMats]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "949347156c25054de2db3b166c52ac4728cbad65"
uuid = "90014a1f-27ba-587c-ab20-58faa44d9150"
version = "0.11.31"

[[deps.PackageExtensionCompat]]
git-tree-sha1 = "fb28e33b8a95c4cee25ce296c817d89cc2e53518"
uuid = "65ce6f38-6b18-4e1d-a461-8949797d7930"
version = "1.0.2"
weakdeps = ["Requires", "TOML"]

[[deps.Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "34c0e9ad262e5f7fc75b10a9952ca7692cfc5fbe"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.3"

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "a935806434c9d4c506ba941871b327b96d41f2bf"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.0"

[[deps.Pipe]]
git-tree-sha1 = "6842804e7867b115ca9de748a0cf6b364523c16d"
uuid = "b98c9c47-44ae-5843-9183-064241ee97a0"
version = "1.3.0"

[[deps.Pixman_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "LLVMOpenMP_jll", "Libdl"]
git-tree-sha1 = "64779bc4c9784fee475689a1752ef4d5747c5e87"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.42.2+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.10.0"

[[deps.PlotThemes]]
deps = ["PlotUtils", "Statistics"]
git-tree-sha1 = "1f03a2d339f42dca4a4da149c7e15e9b896ad899"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "3.1.0"

[[deps.PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "PrecompileTools", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "f92e1315dadf8c46561fb9396e525f7200cdc227"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.3.5"

[[deps.Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "JLFzf", "JSON", "LaTeXStrings", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "Pkg", "PlotThemes", "PlotUtils", "PrecompileTools", "Preferences", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "RelocatableFolders", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "UUIDs", "UnicodeFun", "UnitfulLatexify", "Unzip"]
git-tree-sha1 = "ccee59c6e48e6f2edf8a5b64dc817b6729f99eb5"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.39.0"

    [deps.Plots.extensions]
    FileIOExt = "FileIO"
    GeometryBasicsExt = "GeometryBasics"
    IJuliaExt = "IJulia"
    ImageInTerminalExt = "ImageInTerminal"
    UnitfulExt = "Unitful"

    [deps.Plots.weakdeps]
    FileIO = "5789e2e9-d7fb-5bc7-8068-2c6fae9b9549"
    GeometryBasics = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
    IJulia = "7073ff75-c697-5162-941a-fcdaad2a7d2a"
    ImageInTerminal = "d8c32880-2388-543b-8c61-d9f865259254"
    Unitful = "1986cc42-f94f-5a68-af5c-568840ba703d"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "db8ec28846dbf846228a32de5a6912c63e2052e3"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.53"

[[deps.PoissonRandom]]
deps = ["Random"]
git-tree-sha1 = "a0f1159c33f846aa77c3f30ebbc69795e5327152"
uuid = "e409e4f3-bfea-5376-8464-e040bb5c01ab"
version = "0.4.4"

[[deps.Polyester]]
deps = ["ArrayInterface", "BitTwiddlingConvenienceFunctions", "CPUSummary", "IfElse", "ManualMemory", "PolyesterWeave", "Requires", "Static", "StaticArrayInterface", "StrideArraysCore", "ThreadingUtilities"]
git-tree-sha1 = "fca25670784a1ae44546bcb17288218310af2778"
uuid = "f517fe37-dbe3-4b94-8317-1923a5111588"
version = "0.7.9"

[[deps.PolyesterWeave]]
deps = ["BitTwiddlingConvenienceFunctions", "CPUSummary", "IfElse", "Static", "ThreadingUtilities"]
git-tree-sha1 = "240d7170f5ffdb285f9427b92333c3463bf65bf6"
uuid = "1d0040c9-8b98-4ee7-8388-3f51789ca0ad"
version = "0.2.1"

[[deps.PooledArrays]]
deps = ["DataAPI", "Future"]
git-tree-sha1 = "36d8b4b899628fb92c2749eb488d884a926614d3"
uuid = "2dfb63ee-cc39-5dd5-95bd-886bf059d720"
version = "1.4.3"

[[deps.PositiveFactorizations]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "17275485f373e6673f7e7f97051f703ed5b15b20"
uuid = "85a6dd25-e78a-55b7-8502-1745935b8125"
version = "0.2.4"

[[deps.PreallocationTools]]
deps = ["Adapt", "ArrayInterface", "ForwardDiff", "Requires"]
git-tree-sha1 = "01ac95fca7daabe77a9cb705862bd87016af9ddb"
uuid = "d236fae5-4411-538c-8e31-a6e3d9e00b46"
version = "0.4.13"

    [deps.PreallocationTools.extensions]
    PreallocationToolsReverseDiffExt = "ReverseDiff"

    [deps.PreallocationTools.weakdeps]
    ReverseDiff = "37e2e3b7-166d-5795-8a7a-e32c996b4267"

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

[[deps.PrettyTables]]
deps = ["Crayons", "LaTeXStrings", "Markdown", "PrecompileTools", "Printf", "Reexport", "StringManipulation", "Tables"]
git-tree-sha1 = "88b895d13d53b5577fd53379d913b9ab9ac82660"
uuid = "08abe8d2-0d0c-5749-adfa-8a2ac140af0d"
version = "2.3.1"

[[deps.Primes]]
deps = ["IntegerMathUtils"]
git-tree-sha1 = "1d05623b5952aed1307bf8b43bec8b8d1ef94b6e"
uuid = "27ebfcd6-29c5-5fa9-bf4b-fb8fc14df3ae"
version = "0.5.5"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.ProgressLogging]]
deps = ["Logging", "SHA", "UUIDs"]
git-tree-sha1 = "80d919dee55b9c50e8d9e2da5eeafff3fe58b539"
uuid = "33c8b6b6-d38a-422a-b730-caa89a2f386c"
version = "0.1.4"

[[deps.ProgressMeter]]
deps = ["Distributed", "Printf"]
git-tree-sha1 = "00099623ffee15972c16111bcf84c58a0051257c"
uuid = "92933f4c-e287-5a05-a399-4b506db050ca"
version = "1.9.0"

[[deps.Qt6Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Vulkan_Loader_jll", "Xorg_libSM_jll", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_cursor_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "libinput_jll", "xkbcommon_jll"]
git-tree-sha1 = "37b7bb7aabf9a085e0044307e1717436117f2b3b"
uuid = "c0090381-4147-56d7-9ebc-da0b1113ec56"
version = "6.5.3+1"

[[deps.QuadGK]]
deps = ["DataStructures", "LinearAlgebra"]
git-tree-sha1 = "9ebcd48c498668c7fa0e97a9cae873fbee7bfee1"
uuid = "1fd47b50-473d-5c70-9696-f719f8f3bcdc"
version = "2.9.1"

[[deps.QuasiMonteCarlo]]
deps = ["Accessors", "ConcreteStructs", "LatticeRules", "LinearAlgebra", "Primes", "Random", "Requires", "Sobol", "StatsBase"]
git-tree-sha1 = "cc086f8485bce77b6187141e1413c3b55f9a4341"
uuid = "8a4e6c94-4038-4cdc-81c3-7e6ffdb2a71b"
version = "0.3.3"
weakdeps = ["Distributions"]

    [deps.QuasiMonteCarlo.extensions]
    QuasiMonteCarloDistributionsExt = "Distributions"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.Random123]]
deps = ["Random", "RandomNumbers"]
git-tree-sha1 = "c860e84651f58ce240dd79e5d9e055d55234c35a"
uuid = "74087812-796a-5b5d-8853-05524746bad3"
version = "1.6.2"

[[deps.RandomExtensions]]
deps = ["Random", "SparseArrays"]
git-tree-sha1 = "b8a399e95663485820000f26b6a43c794e166a49"
uuid = "fb686558-2515-59ef-acaa-46db3789a887"
version = "0.4.4"

[[deps.RandomNumbers]]
deps = ["Random", "Requires"]
git-tree-sha1 = "043da614cc7e95c703498a491e2c21f58a2b8111"
uuid = "e6cf234a-135c-5ec9-84dd-332b85af5143"
version = "1.5.3"

[[deps.Ratios]]
deps = ["Requires"]
git-tree-sha1 = "1342a47bf3260ee108163042310d26f2be5ec90b"
uuid = "c84ed2f1-dad5-54f0-aa8e-dbefe2724439"
version = "0.4.5"
weakdeps = ["FixedPointNumbers"]

    [deps.Ratios.extensions]
    RatiosFixedPointNumbersExt = "FixedPointNumbers"

[[deps.RecipesBase]]
deps = ["PrecompileTools"]
git-tree-sha1 = "5c3d09cc4f31f5fc6af001c250bf1278733100ff"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.4"

[[deps.RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "PrecompileTools", "RecipesBase"]
git-tree-sha1 = "45cf9fd0ca5839d06ef333c8201714e888486342"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.6.12"

[[deps.RecursiveArrayTools]]
deps = ["Adapt", "ArrayInterface", "DocStringExtensions", "GPUArraysCore", "IteratorInterfaceExtensions", "LinearAlgebra", "RecipesBase", "Requires", "StaticArraysCore", "Statistics", "SymbolicIndexingInterface", "Tables"]
git-tree-sha1 = "d7087c013e8a496ff396bae843b1e16d9a30ede8"
uuid = "731186ca-8d62-57ce-b412-fbd966d074cd"
version = "2.38.10"

    [deps.RecursiveArrayTools.extensions]
    RecursiveArrayToolsMeasurementsExt = "Measurements"
    RecursiveArrayToolsMonteCarloMeasurementsExt = "MonteCarloMeasurements"
    RecursiveArrayToolsTrackerExt = "Tracker"
    RecursiveArrayToolsZygoteExt = "Zygote"

    [deps.RecursiveArrayTools.weakdeps]
    Measurements = "eff96d63-e80a-5855-80a2-b1b0885c5ab7"
    MonteCarloMeasurements = "0987c9cc-fe09-11e8-30f0-b96dd679fdca"
    Tracker = "9f7883ad-71c0-57eb-9f7f-b5c9e6d3789c"
    Zygote = "e88e6eb3-aa80-5325-afca-941959d7151f"

[[deps.RecursiveFactorization]]
deps = ["LinearAlgebra", "LoopVectorization", "Polyester", "PrecompileTools", "StrideArraysCore", "TriangularSolve"]
git-tree-sha1 = "8bc86c78c7d8e2a5fe559e3721c0f9c9e303b2ed"
uuid = "f2c3362d-daeb-58d1-803e-2bc74f2840b4"
version = "0.2.21"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.RelocatableFolders]]
deps = ["SHA", "Scratch"]
git-tree-sha1 = "ffdaf70d81cf6ff22c2b6e733c900c3321cab864"
uuid = "05181044-ff0b-4ac5-8273-598c1e38db00"
version = "1.0.1"

[[deps.Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "838a3a4188e2ded87a4f9f184b4b0d78a1e91cb7"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.3.0"

[[deps.ResettableStacks]]
deps = ["StaticArrays"]
git-tree-sha1 = "256eeeec186fa7f26f2801732774ccf277f05db9"
uuid = "ae5879a3-cd67-5da8-be7f-38c6eb64a37b"
version = "1.1.1"

[[deps.Rmath]]
deps = ["Random", "Rmath_jll"]
git-tree-sha1 = "f65dcb5fa46aee0cf9ed6274ccbd597adc49aa7b"
uuid = "79098fc4-a85e-5d69-aa6a-4863f24498fa"
version = "0.7.1"

[[deps.Rmath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6ed52fdd3382cf21947b15e8870ac0ddbff736da"
uuid = "f50d1b31-88e8-58de-be2c-1cc44531875f"
version = "0.4.0+0"

[[deps.RuntimeGeneratedFunctions]]
deps = ["ExprTools", "SHA", "Serialization"]
git-tree-sha1 = "6aacc5eefe8415f47b3e34214c1d79d2674a0ba2"
uuid = "7e49a35a-f44a-4d26-94aa-eba1b4ca6b47"
version = "0.5.12"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.SIMD]]
deps = ["PrecompileTools"]
git-tree-sha1 = "d8911cc125da009051fb35322415641d02d9e37f"
uuid = "fdea26ae-647d-5447-a871-4b548cad5224"
version = "3.4.6"

[[deps.SIMDTypes]]
git-tree-sha1 = "330289636fb8107c5f32088d2741e9fd7a061a5c"
uuid = "94e857df-77ce-4151-89e5-788b33177be4"
version = "0.1.0"

[[deps.SLEEFPirates]]
deps = ["IfElse", "Static", "VectorizationBase"]
git-tree-sha1 = "3aac6d68c5e57449f5b9b865c9ba50ac2970c4cf"
uuid = "476501e8-09a2-5ece-8869-fb82de89a1fa"
version = "0.6.42"

[[deps.SciMLBase]]
deps = ["ADTypes", "ArrayInterface", "CommonSolve", "ConstructionBase", "Distributed", "DocStringExtensions", "EnumX", "FillArrays", "FunctionWrappersWrappers", "IteratorInterfaceExtensions", "LinearAlgebra", "Logging", "Markdown", "PrecompileTools", "Preferences", "Printf", "QuasiMonteCarlo", "RecipesBase", "RecursiveArrayTools", "Reexport", "RuntimeGeneratedFunctions", "SciMLOperators", "StaticArraysCore", "Statistics", "SymbolicIndexingInterface", "Tables", "TruncatedStacktraces"]
git-tree-sha1 = "32ea825941f7b58a6f48268f4b76971ae8eb9eec"
uuid = "0bca4576-84f4-4d90-8ffe-ffa030f20462"
version = "2.10.0"

    [deps.SciMLBase.extensions]
    SciMLBaseChainRulesCoreExt = "ChainRulesCore"
    SciMLBasePartialFunctionsExt = "PartialFunctions"
    SciMLBasePyCallExt = "PyCall"
    SciMLBasePythonCallExt = "PythonCall"
    SciMLBaseRCallExt = "RCall"
    SciMLBaseZygoteExt = "Zygote"

    [deps.SciMLBase.weakdeps]
    ChainRules = "082447d4-558c-5d27-93f4-14fc19e9eca2"
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    PartialFunctions = "570af359-4316-4cb7-8c74-252c00c2016b"
    PyCall = "438e738f-606a-5dbb-bf0a-cddfbfd45ab0"
    PythonCall = "6099a3de-0909-46bc-b1f4-468b9a2dfc0d"
    RCall = "6f49c342-dc21-5d91-9882-a32aef131414"
    Zygote = "e88e6eb3-aa80-5325-afca-941959d7151f"

[[deps.SciMLNLSolve]]
deps = ["DiffEqBase", "LineSearches", "NLsolve", "Reexport", "SciMLBase"]
git-tree-sha1 = "765b788339abd7d983618c09cfc0192e2b6b15fd"
uuid = "e9a6253c-8580-4d32-9898-8661bb511710"
version = "0.1.9"

[[deps.SciMLOperators]]
deps = ["ArrayInterface", "DocStringExtensions", "Lazy", "LinearAlgebra", "Setfield", "SparseArrays", "StaticArraysCore", "Tricks"]
git-tree-sha1 = "51ae235ff058a64815e0a2c34b1db7578a06813d"
uuid = "c0aeaf25-5076-4817-a8d5-81caf7dfa961"
version = "0.3.7"

[[deps.Scratch]]
deps = ["Dates"]
git-tree-sha1 = "3bac05bc7e74a75fd9cba4295cde4045d9fe2386"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.2.1"

[[deps.SentinelArrays]]
deps = ["Dates", "Random"]
git-tree-sha1 = "0e7508ff27ba32f26cd459474ca2ede1bc10991f"
uuid = "91c51154-3ec4-41a3-a24f-3f23e20d615c"
version = "1.4.1"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "StaticArraysCore"]
git-tree-sha1 = "e2cc6d8c88613c05e1defb55170bf5ff211fbeac"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "1.1.1"

[[deps.SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[deps.Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[deps.SimpleBufferStream]]
git-tree-sha1 = "874e8867b33a00e784c8a7e4b60afe9e037b74e1"
uuid = "777ac1f9-54b0-4bf8-805c-2214025038e7"
version = "1.1.0"

[[deps.SimpleNonlinearSolve]]
deps = ["ArrayInterface", "DiffEqBase", "FiniteDiff", "ForwardDiff", "LinearAlgebra", "PrecompileTools", "Reexport", "SciMLBase", "StaticArraysCore"]
git-tree-sha1 = "69b1a53374dd14d7c165d98cb646aeb5f36f8d07"
uuid = "727e6d20-b764-4bd8-a329-72de5adea6c7"
version = "0.1.25"

    [deps.SimpleNonlinearSolve.extensions]
    SimpleNonlinearSolveNNlibExt = "NNlib"

    [deps.SimpleNonlinearSolve.weakdeps]
    NNlib = "872c559c-99b0-510c-b3b7-b6c96a88d5cd"

[[deps.SimpleTraits]]
deps = ["InteractiveUtils", "MacroTools"]
git-tree-sha1 = "5d7e3f4e11935503d3ecaf7186eac40602e7d231"
uuid = "699a6c99-e7fa-54fc-8d76-47d257e15c1d"
version = "0.9.4"

[[deps.SimpleUnPack]]
git-tree-sha1 = "58e6353e72cde29b90a69527e56df1b5c3d8c437"
uuid = "ce78b400-467f-4804-87d8-8f486da07d0a"
version = "1.1.0"

[[deps.Sobol]]
deps = ["DelimitedFiles", "Random"]
git-tree-sha1 = "5a74ac22a9daef23705f010f72c81d6925b19df8"
uuid = "ed01d8cd-4d21-5b2a-85b4-cc3bdc58bad4"
version = "1.5.0"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "5165dfb9fd131cf0c6957a3a7605dede376e7b63"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.2.0"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.10.0"

[[deps.SparseDiffTools]]
deps = ["ADTypes", "Adapt", "ArrayInterface", "Compat", "DataStructures", "FiniteDiff", "ForwardDiff", "Graphs", "LinearAlgebra", "PackageExtensionCompat", "Random", "Reexport", "SciMLOperators", "Setfield", "SparseArrays", "StaticArrayInterface", "StaticArrays", "Tricks", "UnPack", "VertexSafeGraphs"]
git-tree-sha1 = "c281e11db4eacb36a292a054bac83c5a0aca2a26"
uuid = "47a9eef4-7e08-11e9-0b38-333d64bd3804"
version = "2.15.0"

    [deps.SparseDiffTools.extensions]
    SparseDiffToolsEnzymeExt = "Enzyme"
    SparseDiffToolsSymbolicsExt = "Symbolics"
    SparseDiffToolsZygoteExt = "Zygote"

    [deps.SparseDiffTools.weakdeps]
    Enzyme = "7da242da-08ed-463a-9acd-ee780be4f1d9"
    Symbolics = "0c5d862f-8b57-4792-8d23-62f2024744c7"
    Zygote = "e88e6eb3-aa80-5325-afca-941959d7151f"

[[deps.Sparspak]]
deps = ["Libdl", "LinearAlgebra", "Logging", "OffsetArrays", "Printf", "SparseArrays", "Test"]
git-tree-sha1 = "342cf4b449c299d8d1ceaf00b7a49f4fbc7940e7"
uuid = "e56a9233-b9d6-4f03-8d0f-1825330902ac"
version = "0.3.9"

[[deps.SpatialIndexing]]
git-tree-sha1 = "84efe17c77e1f2156a7a0d8a7c163c1e1c7bdaed"
uuid = "d4ead438-fe20-5cc5-a293-4fd39a41b74c"
version = "0.1.6"

[[deps.SpecialFunctions]]
deps = ["IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "e2cfc4012a19088254b3950b85c3c1d8882d864d"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.3.1"
weakdeps = ["ChainRulesCore"]

    [deps.SpecialFunctions.extensions]
    SpecialFunctionsChainRulesCoreExt = "ChainRulesCore"

[[deps.Static]]
deps = ["IfElse"]
git-tree-sha1 = "f295e0a1da4ca425659c57441bcb59abb035a4bc"
uuid = "aedffcd0-7271-4cad-89d0-dc628f76c6d3"
version = "0.8.8"

[[deps.StaticArrayInterface]]
deps = ["ArrayInterface", "Compat", "IfElse", "LinearAlgebra", "PrecompileTools", "Requires", "SparseArrays", "Static", "SuiteSparse"]
git-tree-sha1 = "5d66818a39bb04bf328e92bc933ec5b4ee88e436"
uuid = "0d7ed370-da01-4f52-bd93-41d350b8b718"
version = "1.5.0"
weakdeps = ["OffsetArrays", "StaticArrays"]

    [deps.StaticArrayInterface.extensions]
    StaticArrayInterfaceOffsetArraysExt = "OffsetArrays"
    StaticArrayInterfaceStaticArraysExt = "StaticArrays"

[[deps.StaticArrays]]
deps = ["LinearAlgebra", "PrecompileTools", "Random", "StaticArraysCore"]
git-tree-sha1 = "fba11dbe2562eecdfcac49a05246af09ee64d055"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.8.1"
weakdeps = ["ChainRulesCore", "Statistics"]

    [deps.StaticArrays.extensions]
    StaticArraysChainRulesCoreExt = "ChainRulesCore"
    StaticArraysStatisticsExt = "Statistics"

[[deps.StaticArraysCore]]
git-tree-sha1 = "36b3d696ce6366023a0ea192b4cd442268995a0d"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.2"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.10.0"

[[deps.StatsAPI]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1ff449ad350c9c4cbc756624d6f8a8c3ef56d3ed"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.7.0"

[[deps.StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "LogExpFunctions", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "1d77abd07f617c4868c33d4f5b9e1dbb2643c9cf"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.34.2"

[[deps.StatsFuns]]
deps = ["HypergeometricFunctions", "IrrationalConstants", "LogExpFunctions", "Reexport", "Rmath", "SpecialFunctions"]
git-tree-sha1 = "f625d686d5a88bcd2b15cd81f18f98186fdc0c9a"
uuid = "4c63d2b9-4356-54db-8cca-17b64c39e42c"
version = "1.3.0"
weakdeps = ["ChainRulesCore", "InverseFunctions"]

    [deps.StatsFuns.extensions]
    StatsFunsChainRulesCoreExt = "ChainRulesCore"
    StatsFunsInverseFunctionsExt = "InverseFunctions"

[[deps.SteadyStateDiffEq]]
deps = ["DiffEqBase", "DiffEqCallbacks", "LinearAlgebra", "NLsolve", "Reexport", "SciMLBase"]
git-tree-sha1 = "2ca69f4be3294e4cd987d83d6019037d420d9fc1"
uuid = "9672c7b4-1e72-59bd-8a11-6ac3964bc41f"
version = "1.16.1"

[[deps.StochasticDiffEq]]
deps = ["Adapt", "ArrayInterface", "DataStructures", "DiffEqBase", "DiffEqNoiseProcess", "DocStringExtensions", "FiniteDiff", "ForwardDiff", "JumpProcesses", "LevyArea", "LinearAlgebra", "Logging", "MuladdMacro", "NLsolve", "OrdinaryDiffEq", "Random", "RandomNumbers", "RecursiveArrayTools", "Reexport", "SciMLBase", "SciMLOperators", "SparseArrays", "SparseDiffTools", "StaticArrays", "UnPack"]
git-tree-sha1 = "753219de57ac7aab0feb88871d3c51e0eb5e3b03"
uuid = "789caeaf-c7a9-5a7d-9973-96adeb23e2a0"
version = "6.64.0"

[[deps.StrideArraysCore]]
deps = ["ArrayInterface", "CloseOpenIntervals", "IfElse", "LayoutPointers", "ManualMemory", "SIMDTypes", "Static", "StaticArrayInterface", "ThreadingUtilities"]
git-tree-sha1 = "d6415f66f3d89c615929af907fdc6a3e17af0d8c"
uuid = "7792a7ef-975c-4747-a70f-980b88e8d1da"
version = "0.5.2"

[[deps.StringManipulation]]
deps = ["PrecompileTools"]
git-tree-sha1 = "a04cabe79c5f01f4d723cc6704070ada0b9d46d5"
uuid = "892a3eda-7b42-436c-8928-eab12a02cf0e"
version = "0.3.4"

[[deps.StructArrays]]
deps = ["Adapt", "ConstructionBase", "DataAPI", "GPUArraysCore", "StaticArraysCore", "Tables"]
git-tree-sha1 = "0a3db38e4cce3c54fe7a71f831cd7b6194a54213"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.16"

[[deps.SuiteSparse]]
deps = ["Libdl", "LinearAlgebra", "Serialization", "SparseArrays"]
uuid = "4607b0f0-06f3-5cda-b6b1-a6196a1729e9"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.2.1+1"

[[deps.Sundials]]
deps = ["CEnum", "DataStructures", "DiffEqBase", "Libdl", "LinearAlgebra", "Logging", "PrecompileTools", "Reexport", "SciMLBase", "SparseArrays", "Sundials_jll"]
git-tree-sha1 = "ded52f017fe7faa3d004427f10ecce4c0491c16a"
uuid = "c3572dad-4567-51f8-b174-8c6c989267f4"
version = "4.23.1"

[[deps.Sundials_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "SuiteSparse_jll", "libblastrampoline_jll"]
git-tree-sha1 = "ba4d38faeb62de7ef47155ed321dce40a549c305"
uuid = "fb77eaff-e24c-56d4-86b1-d163f2edb164"
version = "5.2.2+0"

[[deps.SymbolicIndexingInterface]]
deps = ["DocStringExtensions"]
git-tree-sha1 = "f8ab052bfcbdb9b48fad2c80c873aa0d0344dfe5"
uuid = "2efcf032-c050-4f8e-a9bb-153293bab1f5"
version = "0.2.2"

[[deps.SymbolicUtils]]
deps = ["AbstractTrees", "Bijections", "ChainRulesCore", "Combinatorics", "ConstructionBase", "DataStructures", "DocStringExtensions", "DynamicPolynomials", "IfElse", "LabelledArrays", "LinearAlgebra", "MultivariatePolynomials", "NaNMath", "Setfield", "SparseArrays", "SpecialFunctions", "StaticArrays", "TimerOutputs", "Unityper"]
git-tree-sha1 = "2f3fa844bcd33e40d8c29de5ee8dded7a0a70422"
uuid = "d1185830-fcd6-423d-90d6-eec64667417b"
version = "1.4.0"

[[deps.Symbolics]]
deps = ["ArrayInterface", "Bijections", "ConstructionBase", "DataStructures", "DiffRules", "Distributions", "DocStringExtensions", "DomainSets", "DynamicPolynomials", "Groebner", "IfElse", "LaTeXStrings", "LambertW", "Latexify", "Libdl", "LinearAlgebra", "LogExpFunctions", "MacroTools", "Markdown", "NaNMath", "PrecompileTools", "RecipesBase", "RecursiveArrayTools", "Reexport", "Requires", "RuntimeGeneratedFunctions", "SciMLBase", "Setfield", "SparseArrays", "SpecialFunctions", "StaticArrays", "SymbolicUtils"]
git-tree-sha1 = "28f55dcd865e4a97f262fc476306cee14e8d4651"
uuid = "0c5d862f-8b57-4792-8d23-62f2024744c7"
version = "5.11.0"

    [deps.Symbolics.extensions]
    SymbolicsSymPyExt = "SymPy"

    [deps.Symbolics.weakdeps]
    SymPy = "24249f21-da20-56a4-8eb1-6a02cf4ae2e6"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[deps.Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "OrderedCollections", "TableTraits"]
git-tree-sha1 = "cb76cf677714c095e535e3501ac7954732aeea2d"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.11.1"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.TensorCore]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "1feb45f88d133a655e001435632f019a9a1bcdb6"
uuid = "62fd8b95-f654-4bbd-a8a5-9c27f68ccd50"
version = "0.1.1"

[[deps.TerminalLoggers]]
deps = ["LeftChildRightSiblingTrees", "Logging", "Markdown", "Printf", "ProgressLogging", "UUIDs"]
git-tree-sha1 = "f133fab380933d042f6796eda4e130272ba520ca"
uuid = "5d786b92-1e48-4d6f-9151-6b4477ca9bed"
version = "0.1.7"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.ThreadingUtilities]]
deps = ["ManualMemory"]
git-tree-sha1 = "eda08f7e9818eb53661b3deb74e3159460dfbc27"
uuid = "8290d209-cae3-49c0-8002-c8c24d57dab5"
version = "0.5.2"

[[deps.TimerOutputs]]
deps = ["ExprTools", "Printf"]
git-tree-sha1 = "f548a9e9c490030e545f72074a41edfd0e5bcdd7"
uuid = "a759f4b9-e2f1-59dc-863e-4aeb61b1ea8f"
version = "0.5.23"

[[deps.TranscodingStreams]]
git-tree-sha1 = "1fbeaaca45801b4ba17c251dd8603ef24801dd84"
uuid = "3bb67fe8-82b1-5028-8e26-92a6c54297fa"
version = "0.10.2"
weakdeps = ["Random", "Test"]

    [deps.TranscodingStreams.extensions]
    TestExt = ["Test", "Random"]

[[deps.TriangularSolve]]
deps = ["CloseOpenIntervals", "IfElse", "LayoutPointers", "LinearAlgebra", "LoopVectorization", "Polyester", "Static", "VectorizationBase"]
git-tree-sha1 = "fadebab77bf3ae041f77346dd1c290173da5a443"
uuid = "d5829a12-d9aa-46ab-831f-fb7c9ab06edf"
version = "0.1.20"

[[deps.Tricks]]
git-tree-sha1 = "eae1bb484cd63b36999ee58be2de6c178105112f"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.8"

[[deps.TruncatedStacktraces]]
deps = ["InteractiveUtils", "MacroTools", "Preferences"]
git-tree-sha1 = "ea3e54c2bdde39062abf5a9758a23735558705e1"
uuid = "781d530d-4396-4725-bb49-402e4bee1e77"
version = "1.4.0"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.UnicodeFun]]
deps = ["REPL"]
git-tree-sha1 = "53915e50200959667e78a92a418594b428dffddf"
uuid = "1cfade01-22cf-5700-b092-accc4b62d6e1"
version = "0.4.1"

[[deps.Unitful]]
deps = ["Dates", "LinearAlgebra", "Random"]
git-tree-sha1 = "a72d22c7e13fe2de562feda8645aa134712a87ee"
uuid = "1986cc42-f94f-5a68-af5c-568840ba703d"
version = "1.17.0"
weakdeps = ["ConstructionBase", "InverseFunctions"]

    [deps.Unitful.extensions]
    ConstructionBaseUnitfulExt = "ConstructionBase"
    InverseFunctionsUnitfulExt = "InverseFunctions"

[[deps.UnitfulLatexify]]
deps = ["LaTeXStrings", "Latexify", "Unitful"]
git-tree-sha1 = "e2d817cc500e960fdbafcf988ac8436ba3208bfd"
uuid = "45397f5d-5981-4c77-b2b3-fc36d6e9b728"
version = "1.6.3"

[[deps.Unityper]]
deps = ["ConstructionBase"]
git-tree-sha1 = "25008b734a03736c41e2a7dc314ecb95bd6bbdb0"
uuid = "a7c27f48-0311-42f6-a7f8-2c11e75eb415"
version = "0.1.6"

[[deps.Unzip]]
git-tree-sha1 = "ca0969166a028236229f63514992fc073799bb78"
uuid = "41fe7b60-77ed-43a1-b4f0-825fd5a5650d"
version = "0.2.0"

[[deps.VectorizationBase]]
deps = ["ArrayInterface", "CPUSummary", "HostCPUFeatures", "IfElse", "LayoutPointers", "Libdl", "LinearAlgebra", "SIMDTypes", "Static", "StaticArrayInterface"]
git-tree-sha1 = "7209df901e6ed7489fe9b7aa3e46fb788e15db85"
uuid = "3d5dd08c-fd9d-11e8-17fa-ed2836048c2f"
version = "0.21.65"

[[deps.VertexSafeGraphs]]
deps = ["Graphs"]
git-tree-sha1 = "8351f8d73d7e880bfc042a8b6922684ebeafb35c"
uuid = "19fa3120-7c27-5ec5-8db8-b0b0aa330d6f"
version = "0.2.0"

[[deps.Vulkan_Loader_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Wayland_jll", "Xorg_libX11_jll", "Xorg_libXrandr_jll", "xkbcommon_jll"]
git-tree-sha1 = "2f0486047a07670caad3a81a075d2e518acc5c59"
uuid = "a44049a8-05dd-5a78-86c9-5fde0876e88c"
version = "1.3.243+0"

[[deps.Wayland_jll]]
deps = ["Artifacts", "EpollShim_jll", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "7558e29847e99bc3f04d6569e82d0f5c54460703"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.21.0+1"

[[deps.Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4528479aa01ee1b3b4cd0e6faef0e04cf16466da"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.25.0+0"

[[deps.WeakRefStrings]]
deps = ["DataAPI", "InlineStrings", "Parsers"]
git-tree-sha1 = "b1be2855ed9ed8eac54e5caff2afcdb442d52c23"
uuid = "ea10d353-3f73-51f8-a26c-33c1cb351aa5"
version = "1.4.2"

[[deps.WoodburyMatrices]]
deps = ["LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "5f24e158cf4cee437052371455fe361f526da062"
uuid = "efce3f68-66dc-5838-9240-27a6d6f5f9b6"
version = "0.5.6"

[[deps.WorkerUtilities]]
git-tree-sha1 = "cd1659ba0d57b71a464a29e64dbc67cfe83d54e7"
uuid = "76eceee3-57b5-4d4a-8e66-0e911cebbf60"
version = "1.6.1"

[[deps.XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Zlib_jll"]
git-tree-sha1 = "24b81b59bd35b3c42ab84fa589086e19be919916"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.11.5+0"

[[deps.XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[deps.XZ_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "522b8414d40c4cbbab8dee346ac3a09f9768f25d"
uuid = "ffd25f8a-64ca-5728-b0f7-c24cf3aae800"
version = "5.4.5+0"

[[deps.Xorg_libICE_jll]]
deps = ["Libdl", "Pkg"]
git-tree-sha1 = "e5becd4411063bdcac16be8b66fc2f9f6f1e8fe5"
uuid = "f67eecfb-183a-506d-b269-f58e52b52d7c"
version = "1.0.10+1"

[[deps.Xorg_libSM_jll]]
deps = ["Libdl", "Pkg", "Xorg_libICE_jll"]
git-tree-sha1 = "4a9d9e4c180e1e8119b5ffc224a7b59d3a7f7e18"
uuid = "c834827a-8449-5923-a945-d239c165b7dd"
version = "1.2.3+0"

[[deps.Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "afead5aba5aa507ad5a3bf01f58f82c8d1403495"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.8.6+0"

[[deps.Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "6035850dcc70518ca32f012e46015b9beeda49d8"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.11+0"

[[deps.Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[deps.Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "34d526d318358a859d7de23da945578e8e8727b7"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.4+0"

[[deps.Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[deps.Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[deps.Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[deps.Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[deps.Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[deps.Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[deps.Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "8fdda4c692503d44d04a0603d9ac0982054635f9"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.1+0"

[[deps.Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "b4bfde5d5b652e22b9c790ad00af08b6d042b97d"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.15.0+0"

[[deps.Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libX11_jll"]
git-tree-sha1 = "730eeca102434283c50ccf7d1ecdadf521a765a4"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.2+0"

[[deps.Xorg_xcb_util_cursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_jll", "Xorg_xcb_util_renderutil_jll"]
git-tree-sha1 = "04341cb870f29dcd5e39055f895c39d016e18ccd"
uuid = "e920d4aa-a673-5f3a-b3d7-f755a4d47c43"
version = "0.1.4+0"

[[deps.Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[deps.Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[deps.Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[deps.Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "330f955bc41bb8f5270a369c473fc4a5a4e4d3cb"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.6+0"

[[deps.Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "691634e5453ad362044e2ad653e79f3ee3bb98c3"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.39.0+0"

[[deps.Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "e92a1a012a10506618f10b7047e478403a046c77"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.5.0+0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "49ce682769cd5de6c72dcf1b94ed7790cd08974c"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.5+0"

[[deps.eudev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "gperf_jll"]
git-tree-sha1 = "431b678a28ebb559d224c0b6b6d01afce87c51ba"
uuid = "35ca27e7-8b34-5b7f-bca9-bdc33f59eb06"
version = "3.2.9+0"

[[deps.fzf_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "47cf33e62e138b920039e8ff9f9841aafe1b733e"
uuid = "214eeab7-80f7-51ab-84ad-2988db7cef09"
version = "0.35.1+0"

[[deps.gperf_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3516a5630f741c9eecb3720b1ec9d8edc3ecc033"
uuid = "1a1c6b14-54f6-533d-8383-74cd7377aa70"
version = "3.1.1+0"

[[deps.libaom_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3a2ea60308f0996d26f1e5354e10c24e9ef905d4"
uuid = "a4ae2306-e953-59d6-aa16-d00cac43593b"
version = "3.4.0+0"

[[deps.libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"

[[deps.libevdev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "141fe65dc3efabb0b1d5ba74e91f6ad26f84cc22"
uuid = "2db6ffa8-e38f-5e21-84af-90c45d0032cc"
version = "1.11.0+0"

[[deps.libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[deps.libinput_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "eudev_jll", "libevdev_jll", "mtdev_jll"]
git-tree-sha1 = "ad50e5b90f222cfe78aa3d5183a20a12de1322ce"
uuid = "36db933b-70db-51c0-b978-0f229ee0e533"
version = "1.18.0+0"

[[deps.libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[deps.libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "b910cb81ef3fe6e78bf6acee440bda86fd6ae00c"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+1"

[[deps.mtdev_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "814e154bdb7be91d78b6802843f76b6ece642f11"
uuid = "009596ad-96f7-51b1-9f1b-5ce2d5e8a71e"
version = "1.1.6+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"

[[deps.x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[deps.x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[deps.xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "9c304562909ab2bab0262639bd4f444d7bc2be37"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "1.4.1+1"
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
# ╠═ae660ecd-936d-40ba-a670-efceb73951c5
# ╟─6ba63970-331d-4849-a97c-409c34949560
# ╠═b365be1a-613a-467a-8aa8-a7ab64dbb9f6
# ╠═7fa6d529-b108-4ff6-b174-f7fcc894f016
# ╟─321734c2-5478-4662-8b20-0dd2bcf6e052
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
# ╟─577dcac2-35ad-42e9-af63-d6087da44f96
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
# ╟─b1fd1721-5160-40db-9cbf-a244122e28cc
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
# ╟─207902a2-99e3-4e20-aa1c-16c860b3944c
# ╟─9f03c256-665a-4e25-a69a-d3dec38aee95
# ╟─03133a31-8c8d-4e1b-b1c7-3151c56fe9b5
# ╟─af2d07b5-0d00-4f74-b8e9-26af7a9a26b2
# ╟─f8db3f22-8c10-437c-9cc8-6a1d9c7c37a6
# ╟─0b85fba2-ab57-413e-bce8-79040ccd6ff4
# ╟─1925f08b-948f-4bbb-a576-66c28c405763
# ╟─0a412d5b-2801-4d1c-afd1-700c396a2410
# ╟─e0e1a83d-a439-4b8b-8533-b560e550eb5a
# ╟─02fec167-4a5a-4b5a-9e44-ca7f2df0a7a4
# ╟─59f64278-90ec-4e10-848e-e730bc102de8
# ╟─d1e88e25-b117-4225-b158-d32bffe8a692
# ╠═9e484b64-52df-41a3-8ea7-1f59ed7575eb
# ╟─3a469b39-ce07-403d-8759-769c4071b7f1
# ╟─4b82d0e1-a24f-4f20-9e55-86c7e58abbae
# ╠═1ffa6751-5e31-4d6b-8ca2-edf4c9665fa5
# ╟─c7545ed3-7c98-486e-9813-d6563f1cb186
# ╟─67b76fc5-c24b-4bfd-8e11-56da80329f57
# ╠═dea806a3-bf29-4cd2-ba65-0e37eb91a1d6
# ╟─a734b56d-8d26-4475-914a-e6c45df43f91
# ╠═79365c5e-2cbc-463f-9e84-cdb0ecc1c311
# ╟─889c2b3c-642e-4ec3-acd1-23e7a766a416
# ╟─c9fbcf78-ffc5-405e-b6ae-11f4565e432c
# ╠═26a440f9-39cd-4b08-b69f-0d52494cf5b6
# ╟─bff22eaf-d30c-475a-94f8-7dba1893596d
# ╠═96db9e10-f01a-47be-84af-b42f9dd68fdb
# ╟─3e5bc1ac-0b1e-4af0-a9fe-f7cb6e2418dd
# ╠═9c29aa5d-4ca0-459d-8cf5-2d5a667115f7
# ╟─2d6311c5-9d1a-4031-a33e-397ab8004515
# ╟─cada7e49-558e-483f-9ed8-1c49d6607284
# ╟─edbd6944-ebfa-4f6e-95e2-bb757a0ee1c4
# ╟─03398b1d-42cc-4cb4-9ca3-6ce991751c1d
# ╠═54a25523-6d51-494e-91b4-7b4e237b47a0
# ╟─1bfbb181-a89d-45cf-8612-45d5c6c6fe6f
# ╟─25585215-c44e-4a21-b44f-6ed805c2c36d
# ╠═58bf8716-e5b4-49f1-b945-88a530bf1230
# ╟─7f4d9aa4-7c60-477f-98b7-830a97e7fad6
# ╠═a0b5cc9b-37d5-488c-b67a-79f746d5f10a
# ╟─28c4cc6a-1f3b-421a-9608-2c8f539c3551
# ╟─e46df874-abb6-472a-b555-fae5ee78454e
# ╠═2ef36095-b26c-4f05-8a0e-04f33d0c5f84
# ╠═cfcc623c-87a9-4913-b7be-3ec06409e486
# ╠═3347be4e-fe1d-4dcf-97f9-a874a913139c
# ╟─e17139db-a3c4-4046-851e-e671d2c47b85
# ╟─17178304-b288-4a88-a027-15cadfd5b13d
# ╠═b740df96-63d8-43ab-89d1-634068aa111a
# ╟─88afcd83-9c3b-4924-a074-b7adf7bfd98e
# ╠═f4c5544a-db06-4765-98bc-8423dd08c35f
# ╟─7969a4e0-cae2-4ad9-8398-3d48215d29e1
# ╠═9d9cb9cb-b376-4292-ab8b-a24f5886ea85
# ╟─de38ee7b-4dd4-48ba-85a9-5c3934b33ce6
# ╟─90261e3e-669e-4674-889b-7c51555ab57c
# ╠═39885d50-be1e-4fc5-874f-4d97e146e16d
# ╠═439977d5-b7b6-45e2-a007-cfe0443d61fa
# ╟─b743663e-8967-4f45-a04d-13f3311e49ed
# ╠═a1aa34e7-eb4a-4b6b-86fa-b8967b7691bc
# ╠═18bc4c7a-6040-4f81-b4c5-6237679db9a7
# ╠═32a83090-efbf-4909-9894-d3c46e2ba902
# ╠═ec0b276a-6837-4dd3-a393-7189f2588485
# ╟─be79023e-364c-447b-93be-96b70cbf5ee7
# ╠═9fcb026c-e5d5-452e-aaf8-94561497d546
# ╟─3788b175-706c-4494-925d-15baf24def01
# ╠═d3589579-54b8-49db-920b-b0735fee2048
# ╟─757b0203-0102-49a3-831f-b7e725365c44
# ╠═ac0f5ba9-7f2e-4862-8026-1215adb29750
# ╟─664f5f0b-00bc-49b1-a89a-d7babb01ef91
# ╠═2010a4d0-4831-47c3-963c-4a53f5110197
# ╠═f0d9bd9e-8105-40da-bc0b-b4e4da46d3d3
# ╠═22a7e684-b4ad-4c03-80e8-8d4af722fe1c
# ╟─e081630c-adc4-4d24-b4d5-12192adf1ed2
# ╠═2fd2d198-65fa-4f87-a7a8-9a32ab1a8aea
# ╠═d75a0f79-12d9-4d12-803c-0b2e94e0352d
# ╟─b2b1dc51-f134-42c3-902b-8b4449c9ae2c
# ╟─2d71cfca-15c5-4aa6-a75d-38a30f2fb4dc
# ╟─1011090d-1728-41f5-ae12-4ed8c9f22a7e
# ╟─a6ceac00-1425-44f8-a1b4-049225bc9fde
# ╠═4e4a8dea-57f9-433a-9798-3aa32cb9fba5
# ╟─2bd32b4f-5c0b-4695-b9c8-89c55112d37f
# ╠═9db687cd-31a5-44c4-a32e-807d9097321b
# ╠═f5b0c972-a82e-40bc-a4a2-4a5173198804
# ╟─5bf1cb3e-8d76-4ff2-aaef-4014801ab51a
# ╠═40df631e-7e04-475f-a66e-03457f370c5a
# ╠═9231e42c-052f-498e-baf3-46c54714d5ab
# ╟─168968e7-32c6-4ddd-8392-7dc53267544a
# ╠═bb5de625-f002-4019-b8e1-a0f5d57bc775
# ╠═4f9e3ad9-e52e-4fe2-b26a-e8fed89522f2
# ╠═e03116a6-0a0a-415e-aa86-26db79f7c115
# ╠═78aa1122-ce26-49c7-ac00-6a9546eecf43
# ╟─08387632-41c1-4ced-822f-c13f5a15f895
# ╠═231b4222-bb55-44f3-aa3e-27737a20ec0c
# ╟─d552531e-4f06-4ec2-8081-3e209c767b9e
# ╠═27276394-9698-4893-ad01-f4ec56831bc3
# ╠═009c5a7d-8001-48be-8e8e-eb55a70560fd
# ╟─28a1c22e-417b-4e55-be60-7669168ec87c
# ╟─0872b830-bc5b-44cc-b325-1b6c3190e4f9
# ╟─e611249c-cf79-4e9f-aeb6-3fb5420d3ed3
# ╟─e4621323-7a8a-4d53-9662-ef42af0a7901
# ╟─06033157-0f51-408c-879d-317ecf06d8a9
# ╠═4b05e48e-13da-4fb4-8570-b96b9acbf2d3
# ╟─fb57b645-2104-4f35-a710-6383ce7744a6
# ╟─65db052f-db65-487a-8b74-b9155aedb769
# ╟─1b361fc0-0c73-42c3-978f-48714de13ac6
# ╠═9e0a7550-5508-4307-908b-438b8a10fa48
# ╟─4845f829-a390-4f28-b09b-7e37ce77a3c5
# ╠═74525e5d-397a-4621-b3db-de5455293d67
# ╟─cf01a578-fe84-42db-a4bb-0524c5c5377b
# ╟─571706ad-69b6-42aa-a43c-49a5454246c8
# ╟─773d50ea-dfd6-4197-9c99-4853f5310e7a
# ╠═613bd9bd-3560-4592-8d9f-ae5c77c42c9f
# ╟─a1c99163-03d9-4c84-b34d-c5e605bb010a
# ╟─c4817356-86b9-4e04-bdc3-7f225f9e2809
# ╟─f977a742-9110-428c-a854-e1f79ea0e8f5
# ╟─4478faf8-13ac-40bb-a222-259d060b4ae7
# ╟─77db2c9d-381c-4429-8c91-fa33ccbce66d
# ╠═734ec866-c4de-451e-b9db-dfdd14ad6719
# ╟─f795eb08-164e-4cd9-8308-e3d1575347d6
# ╠═33acaaa2-934d-48ad-b7f9-061ccde6c6d5
# ╟─e38f0ea5-9394-4204-ade2-acf5b65d6a18
# ╠═5b19c03c-3e99-4fb0-a918-72f09fa8626a
# ╟─ed667b1a-3fa9-40c5-8c7f-637926800bb6
# ╠═0e5a2adf-3ffd-4fba-9e0c-e6ea098d4334
# ╟─9b9cf2d0-7027-4dbe-9293-bced98e1ad5b
# ╠═6573c039-32da-4144-bde2-f35afc166fe4
# ╟─2851f98f-0ee1-4264-827d-d3f1ebe59763
# ╠═84e61787-8d2b-4c62-8752-1f57777bbbb8
# ╟─ab64a9f2-6e57-4346-886f-5488c1aa328a
# ╠═ff791ba6-25db-4538-9166-88f06de871c1
# ╟─598ef29a-d69f-4448-94da-d55c80cdc35d
# ╠═c59effcd-589d-4ca8-bf99-92fa73262309
# ╟─08c5a78a-bdc9-452a-a918-64ece0c2378e
# ╟─50298b73-d192-4f80-8fda-517d67913d83
# ╠═1b0e91f2-6c21-4eb2-827c-091229cb7e8a
# ╟─604a1d3a-4111-40a0-a69d-a9f2fc279acc
# ╠═fc7c9dfa-6879-46f1-aa78-9e3d0f3a8c49
# ╟─eaa17eb2-6885-4530-98e4-31da85e5a69f
# ╠═6171e4c5-be98-4815-8c9d-ed9794c3d50f
# ╟─f48602c0-08ee-4515-82d7-45f7c4d1e05c
# ╠═05b73d9b-3682-47ee-a329-4d4fdd2b16fe
# ╟─c16a6c92-d779-434b-8e13-d6cb422a6760
# ╟─4723a677-f11b-4506-bc3d-bc77bc260b64
# ╟─12d51ec0-c678-4eab-8802-babc1b00a2f6
# ╠═076bbcf2-d387-4421-88d8-74c48d612bdb
# ╠═1121ff38-a9af-49cd-a067-fe48ff02d861
# ╠═b9775f8b-4515-4727-8001-b450d1ac14e0
# ╠═950c6ecc-ff34-4016-a5b9-cb927494a97a
# ╠═515f9db1-7cca-47a8-b2d9-da7959aa4833
# ╠═06ac3b4b-5ddd-4dac-96f7-788bd3adecec
# ╟─a20392d7-5324-458c-9afe-2a5f3f010d6a
# ╠═efe9c0cf-b40d-4078-809a-a3b9650e91b2
# ╠═4f0f43e0-14e4-40ed-834f-7638d7ca4281
# ╠═69245bbd-1b9d-4e69-b3cc-13513ad3f745
# ╠═611e847c-571e-4c4f-aca7-fc2b697fe96e
# ╟─d4441a61-6464-4ab0-808a-05d9e28e2c13
# ╟─1a279163-a7e8-4b83-959c-d0e5d7be70e0
# ╠═42223b0a-20d0-490b-a017-dc647fc22598
# ╠═58178d78-99dc-4ee0-972b-286103ad64f4
# ╠═042a8c10-0912-4118-9d09-1b47a6a120ba
# ╠═b1b79083-e717-4bb4-973b-092cc4559b3a
# ╠═42603be5-8bcd-48a2-a124-cb93b866f474
# ╠═afc96979-b027-417e-896b-1ebc5c162e74
# ╟─fcd52eda-29c0-4000-a4f3-3e4109c48dd4
# ╠═c0ce024b-7d35-493a-8a60-d5398111ef17
# ╠═f0e47e84-dd1f-4cce-98d7-1e675219fedb
# ╠═c01141cc-5373-4027-92c4-acbeee56ad18
# ╠═5e4428d2-11e1-43de-8492-fa81a0205c16
# ╠═6b11adc4-e829-4712-9bb9-86c0c1891627
# ╟─76e6efcb-0528-4016-a9ef-7d3154b82810
# ╠═63e25db5-69af-4809-96c7-fb31cfa20908
# ╟─39c654fa-d312-476c-b5e9-8834314bab04
# ╠═8c23c939-b5a4-4bf4-bcef-a260f721a36f
# ╟─7ef7e44a-27ae-4476-a62b-b055b0c94a72
# ╠═b4a5d356-8261-40bb-8b81-3db8a7cbd750
# ╟─9efa7843-8ee2-4c5c-bd47-e29ac8f6200d
# ╠═2eb4ac72-a1ce-4b3e-be5d-775d04336849
# ╟─508ae61f-5523-4aab-aa97-5db2a9830368
# ╠═341a5669-1788-4c18-b845-27126da0fbf0
# ╠═5379f06e-a08c-11ee-17f0-a949aba4d9dc
# ╠═514a1c02-c35c-44d0-86ce-6ea0865656c0
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
