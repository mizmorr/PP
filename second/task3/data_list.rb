class Data_list
    
    def initialize(list:)
        self.list = list
    end

    def select(number)
        raise ArgumentError 'number bigger than list size' if number>=list.size
        selected << number
    end

    def get_selected
     list.select {|elem| selected.include?(elem)}
    end

    def get_names
        raise NotImplementedError
    end

    def get_data
        raise NotImplementedError
    end

    protected
    def list
        @list
    end
    def list=(list)
        @list = list
    end
    private
    def selected
        @selected
    end
    
    def selected=(selected)
        @selected = selected
    end 
end
