```Write a function that rotates a list by k elements. For example [1,2,3,4,5,6]
rotated by two becomes [3,4,5,6,1,2]. Try solving this without creating a copy of
 the list. How many swap or move operations do you need?```

using BenchmarkTools

list = 1:10

function rotate_list(x::Vector{Int64},y::Int64)
    x[[y:end; 1:y]]
end

@benchmark circshift(list, 3)
@benchmark rotate_list(list, 3)
