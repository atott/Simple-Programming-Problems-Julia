#Write a function that returns the elements on odd positions in a list.

list = [1,2,3,45,"A","b","c"]

function return_odd(x)
    l = []
    for (i,j) in enumerate(x)
        if i % 2 == 1
            push!(l,j)
        end
    end
    return l
end

return_odd(list)
