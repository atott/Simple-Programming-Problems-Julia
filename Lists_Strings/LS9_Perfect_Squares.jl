```Write a function on_all that applies a function to every element of a list.
Use it to print the first twenty perfect squares. The perfect squares can be
found by multiplying each natural number with itself. The first few perfect
squares are 1*1= 1, 2*2=4, 3*3=9, 4*4=16. Twelve for example is not a perfect
square because there is no natural number m so that m*m=12. (This question is
tricky if your programming language makes it difficult to pass functions as arguments.)```


function on_all(x::Int64)
   for i in x
      if isinteger(sqrt(i)) == true
         return i
      end
   end
end

function find_PS()
   c = 0
   cou = 1
   while c <= 200
      if isa(on_all(cou), Int64)
         println( on_all(cou))
         c += 1
      end
   cou += 1
   end
end


@time find_PS()
