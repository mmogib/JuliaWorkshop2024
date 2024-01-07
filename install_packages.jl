# install_packages.jl

# Activate the project environment (creates a new one if not present)
import Pkg
Pkg.activate(".")

# Install required packages
Pkg.add([
    "Pluto",            # Interactive Julia notebooks
    "JuMP",             # Mathematical optimization
    "DataFrames",       # Data manipulation and analysis
    "Flux",             # Neural networks and machine learning
    "DifferentialEquations"  # Solving differential equations
])

# Optionally precompile the packages for faster loading times
using Pluto, JuMP, DataFrames, Flux, DifferentialEquations

println("Packages installed successfully.")
