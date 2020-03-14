# Write a function that combines two lists by alternatingly taking elements,
# e.g. [a,b,c], [1,2,3] → [a,1,b,2,c,3].
using BenchmarkTools

a = ["a","b","c","d","e","F","g","h"]
b = [1,2,3,4,5,6,7,8]

function inter_concat(x::Vector{String},y::Vector{Int64})
    c = Vector{Any}(undef, 2*length(a))
    i = 0
    for (x,y) in zip(a,b)
        c[i += 1] = x
        c[i += 1] = y
    end
    return c
end

@benchmark inter_concat(a, b)


@benchmark collect(Iterators.flatten(zip(a, b)))
