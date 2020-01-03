#install_plots

using Pkg
pkg"add Plots StatsPlots Pipe RDatasets"

# pre compile them Plots and StatsPlots
using Plots, StatsPlots, Pipe, RDatasets

pkg"precompile"


# doesn't work yet
# using PackageCompilerX
# create_sysimage(:Plots, replace_default = true)