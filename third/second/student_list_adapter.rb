load 'second/student_list_handler.rb'

class Student_list_adapter

    def initialize path, data_type
        self.path=path
        self.handler = Student_list_handler.new data_type
        self.handler.from_s
    end
    def get_by_id id 
        self.handler.get_by_id id
    end

    def get_by_name name
        self.handler.get_by_name name
    end
    def get_k_n_student_short_list k,n
        self.handler.get_k_n_student_short_list k,n
    end

    def sort
        self.handler.sort
    end
    def add_student student
        self.handler.add_student student
        self.handler.to_file self.path
    end

    def remove_student id
        self.handler.remove_student id
        self.handler.to_file self.path
    end
    def count
        self.handler.count
    end

    def replace_student id, student
        self.handler.replace_student id, student
        self.handler.to_file self.path
    end
end