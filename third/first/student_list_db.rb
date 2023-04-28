load 'first/base.rb'

class Student_list_DB
    def initialize
        self.db = Connect.new.connection
    end
    def select_by_id(id)
        self.db.query("SELECT * FROM Student WHERE id=#{id}").entries
    end
    def insert_from_student(student)
        h=student.instance_variables.each_with_object({}){|v,h| h[v]=student.instance_variable_get(v)}.to_h
        self.db.query "insert into Student (name,last_name,git,telegram,email,phone) values(#{h[:@name]},#{h[:@last_name]},#{h[:@git]},#{h[:@telegram]},#{h[:@email]},#{h[:@phone]})"
    end
    def insert_from_h h 
        self.db.query "insert into Student (name,last_name,git,telegram,email,phone) values(#{h[:name]},#{h[:last_name]},#{h[:git]},#{h[:telegram]},#{h[:email]},#{h[:phone]})"
    end
    def delete id 
        self.db.query "delete from Student where id=#{id}"
    end
    def replace id,h
        self.db.query "update Student set (name,last_name,git,telegram,email,phone) values(#{h[:name]},#{h[:last_name]},#{h[:git]},#{h[:telegram]},#{h[:email]},#{h[:phone]}) where id=#{id}"
    end
    def get_students start, count
        self.db.query "select * from Students limit #{start},#{count}"
    end
    def count
        self.db.query "select count(*) from Students"
    end
    private 
    def db
        @db
    end
    
    def db=(db)
        @db = db
    end 
end

std= Student_list_DB.new
puts std.select_by_id 1