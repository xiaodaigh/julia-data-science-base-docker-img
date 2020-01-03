using Pkg
#pkg"add WebIO TableView"

pkg"add https://github.com/xiaodaigh/FstFileFormat.jl FastGroupBy SortingLab  ParquetFiles FileIO Missings CategoricalArrays Tables DataConvenience"

#using WebIO

#WebIO.install_jupyter_nbextension(); WebIO.install_jupyter_labextension()


using PackageCompilerX
create_sysimage(
 	[
 	#:TableView
 	:FastGroupBy,
 	:SortingLab,
 	:ParquetFiles,
 	:FileIO,
 	:Missings,
 	:CategoricalArrays,
 	:FreqTables,
 	:Tables,
 	:DataConvenience
 	], replace_default = true)

