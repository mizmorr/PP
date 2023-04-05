load 'task1_2/student_short.rb'
load 'task3/data_list.rb'

class Data_list_student_short < Data_list
    def initialize(list:,filter:,constructor:)
        super(list:list)
        self.name_filter=filter
        self.constructor=constructor
    end
    def get_data
        constructor.construct list
    end
    
    def get_names
        name_filter.filter list[0]
    end 
    private
    def name_filter
        @name_filter
    end
    
    def name_filter=(filter)
        @name_filter = filter
    end 
    def constructor
        @constructor
    end
    
    def constructor=(constr)
        @constructor = constr
    end 
end