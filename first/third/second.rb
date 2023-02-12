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

# func = {0 => min,2 => 'b'}

def func(num, file_path)
    file = File.open(file_path)
    file_data = file.read.split().map(&:to_i)
    case num
        when 1
            puts min file_data
        when 2
            puts first_positive file_data
        else 
            puts 'bad type'
        end
end

func(1,'data.txt')