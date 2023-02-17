def min_count(ar,left,rigth)
    return ar.slice(left,rigth).select{|e| e==ar.min}.length
end