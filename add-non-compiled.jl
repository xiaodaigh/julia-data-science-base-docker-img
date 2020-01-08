#install_plots

using Pkg
pkg"add Plots StatsPlots Pipe FstFileFormat Fread"
#pkg"add StatsPlots Pipe FstFileFormat Fread"

# pre compile them Plots and StatsPlots
#using Plots, StatsPlots, Pipe

pkg"precompile"


# doesn't work yet
using PackageCompilerX
create_sysimage(:Plots, replace_default = true)
