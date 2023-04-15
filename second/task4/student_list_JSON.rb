require 'json'
load 'task1_2/student.rb'
load 'task1_2/student_short.rb'
load 'task3/data_list.rb'
class Student_list_json

    def write_to(list,path_name)
        raise FileNotFoundError if !File.exist?(path_name)
        File.open(path_name,'w') {|file| file.write(list.map{|stud|stud.getInfo.to_json}.join("\n"))}
    end
    def from(path_name)
        raise FileNotFoundError if !File.exist?(path_name)
        File.read(path_name).split('\n').map do |line| 
            hash=JSON.parse line
            Student.new(name:hash["name"], last_name:hash["last_name"],options:hash)
        end
    end

end