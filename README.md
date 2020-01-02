# Intro
Julia Data Science Docker with data science packages compiled for instant loading!

Time-to-first-plot (TTFP) is often regarded as one of Julia's main pain points. There are packages to alleviate the pain such as PackageCompiler.jl and more recently PacakgeCompilerX.jl. These package work by "compiling" the packages so that `using Pkg` will be fast.

This is an experimental first attempt at making data science package used by me into docker.

## Usage

Firstly, install Docker, then run the below command to run a Julia REPL from docker

**Basic**
```bash
docker run --rm -it xiaodaidocker2019/julia-data-science-base
```

**Attach storage**
Often one may wish to save the data to somewhere on the hard drive, you may do this by attaching a local folder
```bash
docker run --rm -it -v /path/to/local/dir:/path/to/docker/dir/ xiaodaidocker2019/julia-data-science-base
```

You can now use `path/to/docker/dir/` like `/path/local/dir`


## Packages

The below packages are compiled using PackageCompilerX.jl into the image

| Package | Type |
| -- | -- |
| CSV | Data IO |
| Feather | Data IO |
| JDF | Data IO |
| DataFrames | Data Manipulation |
| DataFramesMeta | Data Manipulation |
| Lazy | Data Manipulation/Convenience |
| Pipe | Data Manipulation/Convenience |
| StatsBase | Foundation/Statistics |
| GLM | Supervised learning |
| DecisionTree | Supervised learning |
| JLBoost | Supervised learning |
| Clustering | Unsupervised learning |

### Known packages not working

* XGBoost.jl
