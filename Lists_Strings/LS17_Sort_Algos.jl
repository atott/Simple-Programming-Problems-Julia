```Implement the following sorting algorithms: Selection sort, Insertion sort,
 Merge sort, Quick sort, Stooge Sort. Check Wikipedia for descriptions.```

v = rand(-10:10, 1000)


 function selectionsort!(arr::Vector{<:Real})
    len = length(arr)
    if len < 2 return arr end
    for i in 1:len-1
        lmin, j = findmin(arr[i+1:end])
        if lmin < arr[i]
            arr[i+j] = arr[i]
            arr[i] = lmin
        end
    end
    return arr
end

@time  selectionsort!(v)

function insertionsort!(A::Array{T}) where T <: Number
    for i in 1:length(A)-1
        value = A[i+1]
        j = i
        while j > 0 && A[j] > value
            A[j+1] = A[j]
            j -= 1
        end
        A[j+1] = value
    end
    return A
end

x = rand(10)
@show x insertionsort!(x)


function mergesort(arr::Vector)
    if length(arr) ≤ 1 return arr end
    mid = length(arr) ÷ 2
    lpart = mergesort(arr[1:mid])
    rpart = mergesort(arr[mid+1:end])
    rst = similar(arr)
    i = ri = li = 1
    @inbounds while li ≤ length(lpart) && ri ≤ length(rpart)
        if lpart[li] ≤ rpart[ri]
            rst[i] = lpart[li]
            li += 1
        else
            rst[i] = rpart[ri]
            ri += 1
        end
        i += 1
    end
    if li ≤ length(lpart)
        copy!(rst, i, lpart, li)
    else
        copy!(rst, i, rpart, ri)
    end
    return rst
end

mergesort(v)
