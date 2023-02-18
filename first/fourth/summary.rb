

def same_value_num(first, second)
    return (first - (first - second)).length
end

def min_count(ar,left,rigth)
    return ar.slice(left,rigth).select{|e| e==ar.min}.length
end

def slice_values(arr, left,rigth)
    return arr.slice(left,rigth).uniq
end

def negative_positive(ar)
    return ar.select{|elem| elem>=0}.concat ar.select{|elem| elem<0}
end

def is_elem_pairsum(array)
    return array.find_all{|elem| array.find_all{|e| e!=elem}.combination(2).to_a.map{|el| el.sum}.find{|k| k==elem}!=nil}
end




def func_one_array(num, file_path)
    file = File.open(file_path)
    file_data = file.read.split().map(&:to_i)
    case num
        when 2
            puts  min_count file_data
        when 3
            puts slice_values 1,5, file_data
        when 4
            puts negative_positive file_data
        when 5
            puts is_elem_pairsum file_data
        else 
            puts 'bad type'
        end
end

def proccesing_array(array)
    yield array
end

def func_one_array_yeild(num,file_path)
    file = File.open(file_path)
    file_data = file.read.split().map(&:to_i)
    case num
        when 2
            puts  processing_array(file_data) {|ar| ar.slice(left,rigth).select{|e| e==ar.min}.length}
        when 3
            puts processing_array(1,5,file_data) {|arr| arr.slice(left,rigth).uniq}
        when 4
            puts processing_array(file_data) {|ar| ar.select{|elem| elem>=0}.concat ar.select{|elem| elem<0}}
        when 5
            puts processing_array(file_data) {|array| array.find_all{|elem| array.find_all{|e| e!=elem}.combination(2).to_a.map{|el| el.sum}.include?(elem)}}
        else 
            puts 'bad type'
        end

def func_2array(first, second)
    file = File.open(file_path)
    file_data = file.read.split().map(&:to_i)
    p same_value_num first, second
end

