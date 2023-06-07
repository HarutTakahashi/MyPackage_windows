module MyPackage

greet() = print("Hello World!")

function greet2()
    print("New Function!")
end

struct MyType
    x::Int
    y::Int
    z::Int
end


include("file1.jl")

end # module MyPackage
