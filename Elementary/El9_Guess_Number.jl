#Write a guessing game where the user has to guess a secret number. After every guess the program tells the user whether their number was too large or too small. At the end the number of tries needed should be printed. It counts only as one try if they input the same number multiple times consecutively.

rand_num = rand(1:100)
println(rand_num)

function guess_number()
    println("Please guess a number between 1-100")
    num = parse(Int64,readline())
    return num
end


function give_hint(num, rand_num = rand_num)
    if num > rand_num
        println("Number is less than your guess")
    else num < rand_num
        println("Number is greater than your guess")
    end
end


function is_correct_num(num,rand_num=rand_num)
    corr = 0
    if num == rand_num
        println("Correct!!!")
        corr += 1
        return corr
    else
        println("Please try again!")
        corr += 0
        return corr
    end
end

while true
    num = guess_number()
    give_hint(num)
    is_correct_num(num) == 1 && break
end
