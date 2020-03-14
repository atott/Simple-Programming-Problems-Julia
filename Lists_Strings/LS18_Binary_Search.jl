```Implement binary search.```


function binary_search(arr,l,r,x)
    if r ≥ l
        mid = l + (r - l) ÷ 2

            if arr[mid] == x
                return mid
            elseif arr[mid] > x
                return binary_search(arr, l, mid-1, x)
            else
                return binary_search(arr,  mid+1, r,  x)
            end
    else
        return -1
    end
end

arr = [1,2,3,6,8,10,12,15]
x=10

# Function call
result = binary_search(arr, 0, length(arr)-1, x)

arr[result]
