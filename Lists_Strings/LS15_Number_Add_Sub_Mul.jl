```Write functions that add, subtract, and multiply two numbers in their
 digit-list representation (and return a new digit list). If you’re ambitious you
 can implement Karatsuba multiplication. Try different bases. What is the best
 base if you care about speed? If you couldn’t completely solve the prime number
exercise above due to the lack of large numbers in your language, you can
 now use your own library for this task.```

list1 = [1,2,3,4,5]
list2 = [6,7,8,9,10]

function a_s_m(x::Vector{Int64}, y::Vector{Int64})
      a = x .+ y
      s = x .- y
      m = x .* y
      return a,s,m

end

a_s_m(list1, list2)
