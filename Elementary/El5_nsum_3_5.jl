#Modify the previous program such that only multiples of three or five are considered in the sum, e.g. 3, 5, 6, 9, 10, 12, 15 for n=17

println("Please provide a integer to sum")
num = parse(Int64,readline())

function n_sum_3(x::Int64)
    se = 1:x
    sum( [i % 3 == 0 || i % 5 == 0  ? i : 0 for i in se] )
end

println(n_sum_3(num))
