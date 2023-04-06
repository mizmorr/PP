load 'task3/names_pattern/names_template.rb'
class Names_without_id < Names_template
    def initialize
        self.name_filter=".select{|attr| !attr.eql? \"id\"}"
    end
   
    # def filter(names)
    #     super(names)        
    # end
end