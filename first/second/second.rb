def maxDigit(val,max)
    return max if val==0
    if val%10>max and (val%10)%3!=0 
        current_max = val%10
    else 
        current_max = max
    end
    return maxDigit(val/10,current_max)
end

def mDig(val)
    return maxDigit(val,-1)
end
# k = maxDigit 137, 0
puts mDig 3479