```Write three functions that compute the sum of the numbers in a list: using a
for-loop, a while-loop and recursion. (Subject to availability of these
constructs in your language of choice.```


list = [1,2,3,4,5,6,7.0]


s = 0.0
for i in x
    global s += i
end
s



s = 0.0
c = 1
while c <= size(x,1)
    global s += x[c]
    global c += 1
end
s


function countdown(n)
    if n ≤ 0
        println("Blastoff!")
    else
        print(n, " ")
        countdown(n-1)
    end
end
