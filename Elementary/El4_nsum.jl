#Write a program that asks the user for a number n and prints the sum of the numbers 1 to n

println("Please provide a integer to sum")
num = parse(Int64,readline())

function n_sum(x::Int64)
    sum(1:x)
end

println(n_sum(num))
