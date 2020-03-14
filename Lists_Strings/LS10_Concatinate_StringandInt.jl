# Write a function that concatenates two lists. [a,b,c], [1,2,3] → [a,b,c,1,2,3]

list1 = ["a","b","c"]
list2 = [1,2,3]

function concat(x::Vector{String},y::Vector{Int64})
    vcat(x,y)
end

concat(list1,list2)
