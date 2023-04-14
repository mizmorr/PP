require 'json'
load 'task1_2/student.rb'
load 'task1_2/student_short.rb'
load 'task3/data_list.rb'
class Student_list_txt
    def initialize(path_name:)
        self.path_name=path_name
        self.list=self.from_txt
    end

    def set_path(new_path)
        self.path_name=new_path
    end
    def write_to_txt
        raise FileNotFoundError if !File.exist?(@path_name)
        File.open(path_name,'w') {|file| file.write(self.list.map{|stud|stud.getInfo}.join("\n"))}
    end
    def set_list(new_list)
        self.list = new_list
    end
    
    def from_txt
        raise FileNotFoundError if !File.exist?(self.path_name)
        File.read(self.path_name).split("\n").map{|line| Student_list_txt.parse_s(line)}
    end

    def get_by_id(id)
        res=self.list.detect{|student| student.id == id}
        raise 'that id does not exist' unless !res.nil?
        res
    end
    def sort_by(sorting_num)
        case sorting_num
            when 0
                return self.list.sort_by(&:name)
            when 1
                return self.list.sort_by(&:last_name)
            else
                raise "wrong sorting number"
            end  
    end
    def delete(id)
        self.list.select{|student| student.id!=id}
    end
    def add(student)
        student.id=self.list.sort_by(&:id).last.id+1
        self.list+=student
    end
    def replace(id,student_new)
        self.list.map{|student| student.id==id ? student_new : student}
    end

    def get_k_n_student_short_list(n,k)
        raise ArgumentError if k*n+k-1 > self.list.length
        Data_list.new(list:self.list.slice(k*n,k).map{|student| Student_short.from_student(student)})
    end

    def get_student_short_count
        self.list.length
    end
    
    private 
    def Student_list_txt.parse_s(str)
        hash = JSON.parse("{"+str.split(',').map{|elem| elem.split(':')}.map{|el| "\""+el[0]+"\""+":"+"\""+el[1]+"\""}.join(',')+"}")
        raise ArgumentError, "Invalid arguments" if hash["name"].nil?||hash["last_name"].nil?
        Student.new(name:hash["name"], last_name:hash["last_name"],options:hash)
    end
    def list
        @list
    end
    def list=(list)
        @list = list
    end

    def path_name
        @path_name
    end
    def path_name=(path_name)
        @path_name = path_name
    end 
   
end