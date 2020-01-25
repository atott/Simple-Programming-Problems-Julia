#Write a program that prints the next 20 leap years.

using Dates

function calc_leap()
     yr = year(now())
     i = 0
     while i < 20
        if (yr) % 4 == 0
           println(yr)
           i+=1
        end
        yr+=1
     end

end

calc_leap()
