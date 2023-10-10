using MyStatsPackage
include("setup.jl")

@testset "stats_tests" begin
    include("stats_test.jl")
end
