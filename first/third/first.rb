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


res = min aray
puts res
