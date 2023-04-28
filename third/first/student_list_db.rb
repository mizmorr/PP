class Student_list_DB
    private_class_method :new
    
    def self.select_by_id id
        Student_list_DB.db_handler.select_by_id id
    end
    def self.count
        Student_list_DB.db_handler.count
    end
    
    def Student_list_DB.get_students start,count
        Student_list_DB.db_handler.get_students start,count
    end
    
    def Student_list_DB.insert_from_student student
        Student_list_DB.db_handler.insert_from_student student
    end
    
    def Student_list_DB.delete id
        Student_list_DB.db_handler.delete id
    end
    def self.update id,h
        Student_list_DB.db_handler.update id,h
    end
    private

    def self.db_handler
        @db_handler ||= Student_DB.new
    end
end