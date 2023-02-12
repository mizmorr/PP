def func(first, second)
    return (first - (first - second)).length
end

first = [1,2,-3,5,7,8]
second = [2,-3,5,10,12]
puts func first,second