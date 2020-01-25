#Write a program that asks the user for their name and greets them with their name.

println("Please Enter your name:")
name = readline()

function greeter(x)
    println("Hello $x, it's nice to meet you.")
end

greeter(name)
