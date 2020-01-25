#Modify the previous program such that only the users Alice and Bob are greeted with their names.

println("Please Enter your name:")
name = readline()

function greeter(x)
    println("Hello $x, welcome back.")
end

if name == "Bob" || name=="Alice"
    greeter(name)
else
    println("You are not Bob or Alice")
end
