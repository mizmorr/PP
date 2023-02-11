# def test 
#     (1..10).each do |i|
#         yield i
#     end
# end

# test {|x| puts x**3}


def gcd(x,y)
    return x if y == 0

    cur = (x%y)

    return gcd(y,cur)
end


# def number(x)
#     res = 0
#     0.upto(x) do |i|
#         if gcd(x,i)!=1 then res+=1
#     end
#     return res
# end
def number(x)
    res=0
    0.upto(x-1) do |i|
        res+=1 if gcd(x,i)!=1 and i%2==0
    end
    return res
end


