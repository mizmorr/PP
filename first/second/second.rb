def get_max_digit_tail(val,max)
    return max if val==0
    if val%10>max and (val%10)%3!=0 
        current_max = val%10
    else 
        current_max = max
    end
    return get_max_digit(val/10,current_max)
end

def max_dig(val)
    return get_max_digit_tail(val,-1)
end