class Data_table
    
    def initialize(data:)
        self.data = data
    end

    def at(row:, column:)
        data[row][column]
    end

    def rows_count
        data.length
    end
    def columns_count
        data[0].length
    end
    private 
    def data
        @data
    end
    def data=(data)
        @data = data
    end
end
