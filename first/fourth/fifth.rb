def is_elem_pairsum(array)
    return array.find_all{|elem| array.find_all{|e| e!=elem}.combination(2).to_a.map{|el| el.sum}.find{|k| k==elem}!=nil}
end
