#Write a program that prints all prime numbers. (Note: if your programming language does not support arbitrary size numbers, printing all primes up to the largest number you can easily represent is fine too.)

function prime_nums(n)
    i = 0
    while i < n
        i += 1
        if i % 2 == true
            println(i)
        end
    end
end

prime_nums(100)
