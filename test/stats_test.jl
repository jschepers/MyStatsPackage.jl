@testset "unit tests" begin
    @testset "rse_sum" begin
        @test rse_sum(1:3) == 6
        @test rse_sum(2:5) == 14
    end

    @testset "rse_mean" begin
        @test rse_mean(1:3) == 2
        @test rse_mean(2:5) == 3.5
    end
end