using Pkg
pkg"add XGBoost"

using PackageCompiler
create_sysimage([:XGBoost], replace_default = true)
