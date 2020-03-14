```Write function that translates a text to Pig Latin and back. English is
translated to Pig Latin by taking the first letter of every word, moving it to
the end of the word and adding ‘ay’. “The quick brown fox” becomes “Hetay
uickqay rownbay oxfay”.```

st = "the quick brown fox"

function en_pig_lat(s::String)
    sp = split(s)
    for i in sp
        f = i[1]
        println(i[2:end], f, "ay")
    end

end

en_pig_lat(st)


st = "hetay uickqay rownbay oxfay"

function pig_lat_en(s::String)
    sp = split(s)
    for i in sp
        f = i[end-2]
        println(f,i[1:(end-3)])
    end
end

pig_lat_en(st)
