#Write a function that checks whether an element occurs in a list.

list = [1,2,45,"A","B"]

function occ(y::Any,x::Vector{Any})
    y ∈ x
end

occ(1,list)
