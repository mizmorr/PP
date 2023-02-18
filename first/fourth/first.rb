def same_value_num(first, second)
    return (first - (first - second)).length
end

def same_value_num2(first, second)
    return first&second.length
end

def same_value_num3(first, second)
     return yield first, second
end
    
a1=[1,2,3,5,6]
a2=[1,2,3]
p same_value_num3(a1,a2) {|ar1,ar2| ar1&ar2} 