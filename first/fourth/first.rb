def same_value_num(first, second)
    return (first - (first - second)).length
end

def same_value_num2(first, second)
    return first&second.length
end
