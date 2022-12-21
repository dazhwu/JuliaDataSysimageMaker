using Pkg
Pkg.activate(".")
Pkg.instantiate()
using PackageCompiler
using Pkg

Pkg.add(["StatsPlots","CSV","DataFrames","DataFramesMeta","SQLite","GLM","Optim","Distributions","Turing","MCMCChains","Zygote","ReverseDiff","Memoization","Revise","StatsBase","StatsFuns"])
Pkg.add(["ODBC","Plots","MKL","RCall"])

#create_sysimage([:StatsPlots,:CSV,:DataFrames,:DataFramesMeta,:SQLite,:GLM,:Optim,:Distributions,:Turing,:MCMCChains,:Zygote,:ReverseDiff,:Memoization,:Revise,:ODBC,:Plots,:MKL, :RCall],sysimage_path="sys.so",precompile_execution_file="dataanalys.jl")
create_sysimage([:StatsPlots,:CSV,:DataFrames,:DataFramesMeta,:GLM,:Optim,:Distributions,:MCMCChains,:ODBC,:Plots,:MKL, :RCall],sysimage_path="sys.so")
