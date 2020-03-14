```Write a function that takes a list of strings an prints them, one per line,
 in a rectangular frame. For example the list ["Hello", "World", "in", "a", "frame"]
  gets printed as:

*********
* Hello *
* World *
* in    *
* a     *
* frame *
*********```

st = ["Hello","World","in","a","Frame"]

function string_frame(s::Vector{String})
    m_s =  maximum(length.(s))
    println(repeat("*", m_s+4))
    for i in s
        println("\r* $i",repeat(" ",abs(length(i)-m_s))," *")
    end
    println(repeat("*", m_s+4))
end

string_frame(st)
