module MyStatsPackage
include("statistic_functions.jl")
include("printOwner.jl")
include("printContributor.jl")
export rse_sum
export rse_mean
export rse_std
export rse_tstat

export printOwner
export printContributor
end # module MyStatsPackage
