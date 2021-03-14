# Write a program that takes the duration of a year (in fractional days) for an imaginary planet as
# an input and produces a leap-year rule that minimizes the difference to the planet’s solar year.

planets = [["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"],
	  [87.97, 224.70, 365.2422, 1.88, 11.86, 29.46, 84.01, 164.79, 248.59 ]]

function leapYear(num)
    y = 0
    p = 0
    while p < 1 
	p = planets[2][num] % 1 * y
        y += 1
    end
  println("$(planets[1][num]) Leap Year Every $(y-2) Years")
end


for i in 1:9
  leapYear(i)
end
