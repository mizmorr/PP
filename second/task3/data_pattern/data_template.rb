class Data_template

    def construct(data)
        process data
    end
    protected
    def process(data)
        data.map.with_index{|data_piece,index| action(index,data_piece)}
    end
    def action(index, data_piece)
        p index, data_piece
    end

    
end