class Context
    def initialize(strategy:)
        self.strategy = strategy
    end

    def set_strategy(new_strategy)
        self.strategy = new_strategy
    end
    def execute(a,b)
        self.strategy.execute(a,b)
    end
    private 
    def strategy
        @strategy
    end
    def strategy=(strategy)
        @strategy = strategy
    end
end