using Pkg
pkg"rm PackageCompilerX"

#pkg"add Pip"

using Dates
Pkg.gc(collect_delay=Day(0))


pkg"precompile"
