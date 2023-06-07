greet3() = print("file1")

function myiseven(x::Int)
    return x % 2 == 0
end

@assert myiseven(1) == false
@assert myiseven(2) == true


function bisect(f, a::Float64, b::Float64, tol::Float64)
    if f(a) * f(b) > 0
        error("f(a) and f(b) must have opposite signs")
    elseif a >= b
        error("a must be smaller than b")
    else
        while abs(b-a) > tol
            c = (a+b)/2
            f_c = f(c)
            if f_c == 0
                return c
            elseif f_c * f(a) < 0
                b = c
            else
                a = c 
            end
        end
    end
    
    return (a+b)/2
end


