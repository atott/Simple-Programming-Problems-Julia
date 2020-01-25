#Write a program that asks the user for a number n and gives them the possibility to choose between computing the sum and computing the product of 1,…,n.

println("Please provide a integer")
num = parse(Int64,readline())

println("Please Pick P for product or S for  sum")
s_p = readline()


function n_sum(x::Int64)
    sum(1:x)
end


function n_product(x::Int64)
    prod(1:x)
end


if s_p == "S"
    println(n_sum(num))
elseif s_p == "P"
    println(n_product(num))
else
    println("Product or Sum not specified")
end
