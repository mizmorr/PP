class Data_list
    
    def initialize(list:)
        self.list = list
    end

    def select(number)
        raise ArgumentError 'number bigger than list size' if number>=list.size
        selectd.push(number)
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

    private 
    def list
        @list
    end
    def list=(list)
        @list = list
    end
    def selected
        @selectd
    end
    
    def selected=(sel)
        @selected = sel
    end 
end


a=[1,2,3,4,5,6,7,7]
a.select {|a,n|  }