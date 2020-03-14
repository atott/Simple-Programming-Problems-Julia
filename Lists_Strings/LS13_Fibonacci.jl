```Write a function that computes the list of the first 100 Fibonacci numbers.
The first two Fibonacci numbers are 1 and 1. The n+1-st Fibonacci number can be
computed by adding the n-th and the n-1-th Fibonacci number. The first few are
therefore 1, 1, 1+1=2, 1+2=3, 2+3=5, 3+5=8.```

using ResumableFunctions

@resumable function fibonnaci(n::Int) :: Int
  a = 0
  b = 1
  for i in 1:n-1
    @yield a
    a, b = b, a+b
  end
  a
end

function FibSeq(N::Int64)
    for fib in fibonnaci(N)
      println(fib)
    end
end

FibSeq(25)
