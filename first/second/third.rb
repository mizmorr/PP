def number(x,val)
    res=0
    0.upto(x-1) do |i|
        yield i, val , res
    end
    return res
end

def gcd(x,y)
    return x if y == 0

    cur = (x%y)

    return gcd(y,cur)
end

def number2(x,val)
    res=0
    0.upto(x-1) do |i|
        res = yield(i,val,res,x)
    end
    res
end

def maxDigit(val,max)
    return max if val==0
    if val%10>max 
        current_max = val%10
    else 
        current_max = max
    end
    return maxDigit(val/10,current_max)
end

def mDig(val)
    return maxDigit(val,-1)
end

x = gets.chomp.to_i

maxD = mDig(x)

res = number2(x,maxD) do |i,val,cur,x|
     if i%val!=0 and gcd(x,i)!=0
        i
     else
        cur   
     end
end

puts res