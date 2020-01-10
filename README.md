# Intro
Julia Data Science Docker with data science packages compiled for instant loading!

Time-to-first-plot (TTFP) is often regarded as one of Julia's main pain points. There are compilation packages to alleviate the pain such as PackageCompiler.jl and more recently PacakgeCompilerX.jl. These compilation packages work by pre-"compiling" the packages and baking them into the julia sysimage so that `using Pkgs` will be fast just like base packages.

This is an experimental first attempt at making data science packages used by me into a docker image with pre-compiled data science packages.

## Usage

Firstly, install Docker to run a Jupyter notebook with Julia installed. If you are running Windows, I recommend installing git so you have access to git bash.

On Windows you IP can be found using `ipconfig` and on Linux with `ifconfig`. This is need if you wish to do plotting from the docker image.


**Basic: Windows**
```bash
docker run --rm \
	-e DISPLAY=YOUR_IP:0.0 \
	-e JUPYTER_ENABLE_LAB=yes \
	-v "$PWD":/home/jovyan/work\
	-it -p 8888:8888 \
	xiaodaidocker2019/julia-data-science-base
```

Often one may wish to save the data to somewhere on the hard drive, you may do this by attaching a local folder to the directory `somedir`


```

## Packages

The below packages are compiled using PackageCompilerX.jl into the image

| Package | Type | Notes | 
| -- | -- | -- |
| CategoricalArrays | Foundation |  |
| Clustering | Unsupervised learning |  |
| CSV | Data IO | |
| DataConvenience | Data Manipulation/Convenience |  |
| DataFrames | Data Manipulation |  |
| DataFramesMeta | Data Manipulation |  |
| DecisionTree | Supervised learning |  |
| FastGroupBy | Data Manipulation/Convenience |  |
| Feather | Data IO | |
| FreqTables | Foundation/Statistics |  |
| GLM | Supervised learning |  |
| JDF | Data IO | For reading/writing JDF files |
| JLBoost | Supervised learning |  |
| Lazy | Data Manipulation/Convenience |  |
| Missings | Foundation |  |
| ParquetFiles | Data IO |  |
| Plots | Plotting |
| RDatasets | Data |
| SortingLab | Data Manipulation/Convenience |  |
| StatsBase | Foundation/Statistics |  |
| StatsPlots | Plotting |
| Tables | Data Manipulation/Convenience |  |
| TableView | Data Viewing |  |
| XGBoost | Supervised learning |  |



The below packages are included but not compiled

| Package | Type |
| -- | -- |
| Pipe | Data Manipulation/Convenience | If compiled into base then there is warning message with Pipe |
| TableView | Data Viewing | If compiled then doesn't work with JupyterLab |
