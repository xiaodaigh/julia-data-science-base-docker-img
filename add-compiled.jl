using Pkg
pkg"add https://github.com/KristofferC/PackageCompilerX.jl.git CategoricalArrays Clustering CSV DataFrames DataFramesMeta DecisionTree FastGroupBy Feather FileIO FreqTables GLM JDF JLBoost Lazy Missings ParquetFiles RDatasets SortingLab StatsBase Tables Plots StatsPlots Pipe Fread FstFileFormat"
pkg"precompile"
