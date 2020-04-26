# Write a program that automatically converts English text to Morse code and vice versa.

s = "Alex"
m = ".- .-.. . -..-"

mc = Dict([("A", ".-"),
           ("B", "-..."),
           ("C", "-.-."),
           ("D", "-.."),
           ("E", "."),
           ("F", "..-."),
           ("G", "--."),
           ("H", "...."),
           ("I", ".."),
           ("J", ".---"),
           ("K", "-.-"),
           ("L", ".-.."),
           ("M", "--"),
           ("N", "-."),
           ("O", "---"),
           ("P", ".--."),
           ("Q", "--.-"),
           ("R", ".-."),
           ("S", "..."),
           ("T", "-"),
           ("U", "..-"),
           ("V", "...-"),
           ("W", ".--"),
           ("X", "-..-"),
           ("Y", "-.--"),
           ("Z", "--.."),])


function s_to_morse(x::String)
    s = split(uppercase(x), "")

    for i in s
        println(mc[i])
    end

end

s_to_morse(s)


mc_rev = Dict(b=>a for (a,b) in mc)

function morse_to_s(x::String)

    m = split(x, " ")

    for i in m
        println(mc_rev[i])
    end

end


morse_to_s(m)
