
class Student_list_handler

    def initialize data_type
        self.id=0
        self.list=[]
        self.data_type=data_type
    end

    def set_type data_type
        self.data_type=data_type
    end

    def from_s path
        self.list = data_type.from_s(File.read(path)).map{|hash| Student.new (name:hash[:name], last_name:hash[:last_name],options:hash)}
        id_incr
    end
    def to_file path
        File.write(path, data_type.to_s list.map(&:to_hash))
    end

    def get_by_id id 
        list.detect {|student| student.id == id}
    end

    def get_by_name name
        list.select{|student| student.name == name}
    end
    def get_k_n_student_short_list k,n
        slice = list[(k-1)*n,n].map {|student| Student_short.from_student self.id, student}
        return Data_list.new list:slice
    end

    def sort
        list.sort_by(:&name)
    end
    def add_student student
        student.id=self.id
        list << student
        self.id+=1
    end

    def remove_student id
        self.list.reject! {|student| student.id==id}
    end
    def count
        self.list.size
    end

    def replace_student id, student
        id = self.list.find_index {|student| student.id==id}
        self.list[id]=student
    end

    proteced

    attr_accesor :id, :list

    private

    def id_incr 
        self.id=list.max_by(:&id).id.to_i+1
    end
end