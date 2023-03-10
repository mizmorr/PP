class Student
    def initialize(name,id,last_name,git,phone,telegram)
        @Name,@ID,@Last_name,@Git,@Phone,@Telegram=name,id,last_name,git,phone,telegram
    end
    def ID 
        @ID
    end
    def ID=(id)
        @ID = id
    end
    def Name
        @Name
    end
    def Name=(name) 
        @Name=name
    end
    def Last_name=(last_name)
        @Last_name=last_name
    end
    def Last_name
        @Last_name
    end
    def Git
        @Git
    end
    def Git=(git)
        @Git=git
    end
    def Telegram
        @Telegram
    end
    def Telegram=(telegram)
        @Telegram=telegram
    end
    def Phone
        @Phone
    end
    def Phone=(phone)
        @Phone=phone
    end

    def print_student()
        puts "Name: #{@Name}, Last name: #{@Last_name}, Git: #{@Git}, Telegram: #{@Telegram}"
    end
end

    
    
 # def initialize(name:, last_name:, middle_name:,id:0, email:"default@gmail.com",phone:"+79601234567",git:"default",telegram:"default")
    #     @ID,@Name,@Last_name,@MiddleName,@Email,@PhoneNumber,@Git,@Telegram = id, name,last_name,middle_name,email,phone,git,telegram
    # end