def negative_positive(ar)
    return ar.select{|elem| elem>=0}.concat ar.select{|elem| elem<0}
end

