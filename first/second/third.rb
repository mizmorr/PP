def gcd(x,y)
    return x if y == 0

    cur = (x%y)

    return gcd(y,cur)
end

def number_processing(x,val)
    res=0
    0.upto(x-1) do |i|
        res = yield(i,val,res,x)
    end
    res
end

def max_digit_tail(val,max)
    return max if val==0
    if val%10>max 
        current_max = val%10
    else 
        current_max = max
    end
    return max_digit_tail(val/10,current_max)
end

def max_dig(val)
    return max_digit_tail(val,-1)
end

#get not prime with x and no divide by the max digit 
def logic(x)
    max_D = max_dig(x)
    
    res = number_processing(x,max_D) do |i,val,cur,x|
        if i%val!=0 and gcd(x,i)!=0
           i
        else
           cur   
        end
   end
   return res
end

def communication()
    x = gets.chomp.to_i
    puts logic x
end

communication()