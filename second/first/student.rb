class Student
    attr_accessor :ID,
                  :Name,
                  :Last_name,
                  :Git,
                  :Phone,
                  :Telegram
                  :Email

    def initialize(name:"John",last_name:"Doe",options={})
        @Name,@Last_name=name,last_name
        self.ID=options[:ID]
        self.Git=options[:Git]
        self.Phone=options[:Phone]
        self.Email=options[:Email]
        self.Telegram=options[:Telegram]
    end
   
    def print_student()
        puts "Name: #{@Name}, Last name: #{@Last_name}, Git: #{@Git}, Telegram: #{@Telegram}"
    end
end

    
    
 # def initialize(name:, last_name:, middle_name:,id:0, email:"default@gmail.com",phone:"+79601234567",git:"default",telegram:"default")
    #     @ID,@Name,@Last_name,@MiddleName,@Email,@PhoneNumber,@Git,@Telegram = id, name,last_name,middle_name,email,phone,git,telegram
    # end