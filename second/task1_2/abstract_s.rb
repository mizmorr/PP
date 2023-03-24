class Abstract_Student
    def getInfo
        raise NotImplementedError
    end

    def contacts?
        raise NotImplementedError
    end
    def to_s 
        getInfo
    end

end