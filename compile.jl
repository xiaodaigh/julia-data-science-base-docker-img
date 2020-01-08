
using PackageCompilerX
 create_sysimage(
  	[  	 
  	# foundation packages; these needs to be placed first
  	 :Missings
  	,:StatsBase
  	,:Tables
  	,:CategoricalArrays
  	,:DataFrames
  	,:SortingLab

  	# additional packages
  	,:Lazy
    ,:Clustering  	
  	,:CSV # NOTE: putting CSV.jl _before_ DataFrames.jl doens't work  	
	,:DataFramesMeta
	,:DecisionTree	
	,:FastGroupBy
	,:Feather
	,:FileIO
	,:FreqTables	
	,:GLM
	,:JDF
	,:JLBoost
	,:ParquetFiles
 	,:RDatasets
 	,:Pipe
 	,:Plots
 	,:StatsPlots
  	], replace_default = true)

