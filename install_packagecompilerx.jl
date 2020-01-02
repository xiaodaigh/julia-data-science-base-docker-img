using Pkg
pkg"add https://github.com/KristofferC/PackageCompilerX.jl.git CSV DataFrames DataFramesMeta Pipe Lazy GLM DecisionTree  Clustering StatsBase Feather JDF JLBoost"

using PackageCompilerX

create_sysimage([:CSV, :DataFrames, :DataFramesMeta, :Lazy, :GLM, :DecisionTree, :Clustering, :Pipe, :StatsBase, :Feather, :JDF, :JLBoost], replace_default = true)

pkg"rm PackageCompilerX"

using Dates
Pkg.gc(collect_delay=Day(0))
