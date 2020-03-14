```Write a function that takes a list of numbers, a starting base b1 and a target
base b2 and interprets the list as a number in base b1 and converts it into a number
in base b2 (in the form of a list-of-digits). So for example [2,1,0] in base 3 gets
converted to base 10 as [2,1].```

list = [2,1,0]

function base_3_10(x::Vector{Int64})
    num = zeros(Int64, size(x,1))
    for (i,j) in enumerate(x)
        num[i] += x[i] * abs(3 ^ i-1)
    end
    return sum(num)
end

println(" $(base_3_10(list)) base 10")
