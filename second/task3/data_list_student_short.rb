load 'task1_2/student_short.rb'
load 'task3/data_list.rb'

class Data_list_student_short < Data_list
    @@number=-1
    def get_data
        @@number+=1
        Data_list.new(list:[@@number]+get_names)
    end
    
    def get_names
        list[0].instance_variables.map{|attr| attr.slice(1,attr.length)}.select{|v| v!="ID"}
    end 

end