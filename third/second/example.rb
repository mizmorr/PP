class Abstract_Duck
    private_class_method :new
    def duck_sound
        raise NotImplementedError
    end
    def fly
        raise NotImplementedError
    end
end

class Duck < Abstract_Duck
    def duck_sound
        puts 'duck sound!'
    end
    def fly
        puts 'fly!'
    end
end

class Abstract_Turkey
    private_class_method :new
    def turkey_sound
        raise NotImplementedError
    end
    def fly 
        raise NotImplementedError
    end
end

class Turkey < Abstract_Turkey
    def turkey_sound
        puts 'turkey sound!'
    end
    def fly
        puts 'fly!'
    end
end

class TurkeyAdapter
    def inittialize 
        @turkey=Turkey.new
    end
    def duck_sound
        self.turkey.turkey_sound
    end
    def fly
        0.upto(5) do
            self.turkey.fly
        end
    end
end