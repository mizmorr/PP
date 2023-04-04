load 'task1_2/abstract_s.rb'
class Student_short < Abstract_Student
    attr_reader :Git,:Contact
    def initialize(id:, name:, git:, contact:)
        @ID = id
        @Initials = name
        @Git = git
        @Contact = contact
    end

    def self.from_student(student)
        h = student.getInfo.split(', ').map{|tuple| tuple.split(': ')}.map{|tuple| [tuple[0].to_sym,tuple[1]]}.to_h
        new(id:student.ID,name:h[:name],git:h[:git],contact:h.reject{|key,value| key==:name||key==:git}.shift[1]) 
    end
    def self.from_s(id, str)
        h = str.split(',').map{|elem| elem.split(':')}.map{|elem| [elem[0].to_sym,elem[1]]}.to_h
        new id:id,name:h[:name],git:h[:git],contact:h[:contact]
    end
end