require 'json'
load 'task1_2/student.rb'
load 'task1_2/student_short.rb'
load 'task3/data_list.rb'
class Student_list_txt
  
    def write_to(list,path_name)
        raise FileNotFoundError if !File.exist?(path_name)
        File.open(path_name,'w') {|file| file.write(list.map{|stud|stud.getInfo}.join("\n"))}
    end
 
    def from(path_name)
        raise FileNotFoundError if !File.exist?(path_name)
        File.read(path_name).split("\n").map{|line| Student_list_txt.parse_s(line)}
    end

    
    private 
    def Student_list_txt.parse_s(str)
        hash = JSON.parse("{"+str.split(',').map{|elem| elem.split(':')}.map{|el| "\""+el[0]+"\""+":"+"\""+el[1]+"\""}.join(',')+"}")
        raise ArgumentError, "Invalid arguments" if hash["name"].nil?||hash["last_name"].nil?
        Student.new(name:hash["name"], last_name:hash["last_name"],options:hash)
    end

end