
#using WebIO; WebIO.install_jupyter_nbextension(); WebIO.install_jupyter_labextension()

using Pkg

using Dates
Pkg.gc(collect_delay=Day(0))

pkg"precompile"
