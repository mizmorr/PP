class Student_list
    def initialize adapter
        self.adapter = adapter
    end
    
    def count 
        self.adapter.count
    end
    
    def sort 
        self.adapter.sort
    end
    def get_by_id id
        self.adapter.get_by_id id
    end
    def remove_student id
        self.adapter.remove_student id
    end

    def add_student student
        self.adapter.add_student student
    end

    def replace_student id, student
        self.adapter.replace_student id, student
    end
    def get_k_n_student_short_list k,n 
        self.adapter.get_k_n_student_short_list k,n
    end
    
end