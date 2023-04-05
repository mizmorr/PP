load 'task3/data_table.rb'
load 'task3/data_pattern/data_template.rb'
class Data_construct <Data_template
    def construct(data)
        Data_table.new(data:super(data))
    end

   private 
    def action(index,data_piece)
        [index].concat data_piece.getInfo.split(',').map{|elem| elem.lstrip}
    end

end