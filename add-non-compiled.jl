using Pkg
pkg"add XGBoost"

using PackageCompilerX
create_sysimage([:XGBoost], replace_default = true)
