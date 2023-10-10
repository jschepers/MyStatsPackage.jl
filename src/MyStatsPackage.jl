module MyStatsPackage
include("statistic_functions.jl")
include("printOwner.jl")
export rse_sum
export rse_mean
export rse_std
export rse_tstat

export printOwner
end # module MyStatsPackage
