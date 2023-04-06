class Names_template

    def initialize(filter:)
        self.name_filter = filter
    end

    def filter
        select
    end

    private

    
    def select
        names = ["id","Student's initials","Git","Contacts"]
        eval("names"+self.name_filter)
    end

    def name_filter
        @name_filter
    end
    
    def name_filter=(filt)
        @name_filter = filt
    end 
    
        
end