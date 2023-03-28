class Abstract_Student
    attr_accessor :id,:first_name,:last_name
    private_class_method :new
    def getInfo
        raise NotImplementedError
    end

    def contacts
        raise NotImplementedError
    end
    def to_s 
        getInfo
    end

end