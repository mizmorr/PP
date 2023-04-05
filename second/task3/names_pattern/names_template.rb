class Names_template

    def initialize(filter:)
        self.name_filter = filter
    end

    def filter(names)
        select(process(names))
    end

    private

    def process(names)
        names.instance_variables.map{|attr| attr.slice(1,attr.length)}
    end
    def select(names)
        eval("names"+self.name_filter)
    end

    def name_filter
        @name_filter
    end
    
    def name_filter=(filt)
        @name_filter = filt
    end 
    
        
end