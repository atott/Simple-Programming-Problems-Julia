# Write a program that outputs all possibilities to put + or - or nothing
# between the numbers 1,2,…,9 (in this order) such that the result is 100. For
# example 1 + 2 + 3 - 4 + 5 + 6 + 78 + 9 = 100.
using Combinatorics

num = [1,2,3,4,5,6,7,8,9]

function comb(x::Vector{Int64}, s::Int64)
    k = [s,s+1]
    t = parse(Int64, join(x[k]))
    return t, k
end

function  eq_100(x::Vector{Int64})
	co = collect(combinations(1:8))

	for j in co
		for i in 1:8
			c,n = comb(x,i)
			nu = insert!(filter(x -> x ∉ n  , x),n[1],c)
			su = sum(.-(nu[j])) + sum(.+(filter(x -> x ∉ j  , nu)))
			if su == 100
				println(  map(x -> string.("-",x),nu[j]), string.(filter(x -> x ∉ j  , nu)) )
			end
		end
	end

end


eq_100(num)
