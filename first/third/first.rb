# k = Array.new(4,"blag")
# k[0].upcase!
# g = Array.new(3) {"blah"}
# g[0].upcase!
# puts g
# p k

def min(ar)
    min = ar[0]
    for elem in ar do 
        if elem < min
            min = elem
        end
    end
    min
end

def first_positive(ar)
    i=0
    while i<ar.length and ar[i]<0 
        i+=1
    end
    res = (i == ar.length and ar.last<0) ? -1 : i
end        

res = min aray
puts res
