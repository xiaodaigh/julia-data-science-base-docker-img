using Pkg
pkg"rm PackageCompilerX"

using Dates
Pkg.gc(collect_delay=Day(0))

pkg"precompile"
