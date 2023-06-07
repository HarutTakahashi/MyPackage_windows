import MyPackage: myiseven
import MyPackage: bisect
using Test

@testset "myiseven " begin
    @test myiseven(2)
    @test !myiseven(3)
    @test myiseven(1) == false
    @test myiseven(2) == true
    for i in 1:1:10
        @test myiseven(i) == (i % 2 == 0)
    end
end

@testset "myiseven2" begin
    @test myiseven(2)
    @test !myiseven(3)
end

@testset "bisect1" begin
    tol = 1e-10
    f(x) = x - 1.0
    @test isapprox(bisect(f, 0.0, 2.0, 1e-10), 1.0, atol = tol)
    @test_throws ErrorException bisect(f, 0.0, 0.5, 1e-10)
    @test_throws ErrorException bisect(f, 2.0, 0.0, 1e-10)

    f(x) = x^2 - 2.0
    @test isapprox(bisect(f, 0.0, 2.0, 1e-10), sqrt(2.0), atol = tol)
    @test_throws ErrorException bisect(f, 0.0, 1.0, 1e-10)
    @test_throws ErrorException bisect(f, 2.0, 0.0, 1e-10)
end

