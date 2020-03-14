```Write a program that prints all prime numbers. (Note: if your programming language
does not support arbitrary size numbers,
 printing all primes up to the largest number you can easily represent is fine too.)```


 for i in 1:10000
     if i % 2 == 1
        println(i)
     end
  end
