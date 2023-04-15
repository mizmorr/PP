load 'task1_2/abstract_s.rb'

class Student < Abstract_Student
    attr_reader :phone,
                :git,
                :telegram,
                :email

    public_class_method :new
    def initialize(name:,last_name:,options:{})
        @name,@last_name=name,last_name
        self.id=options["id"]
        self.git=options["git"]
        self.phone=options["phone"]
        self.email=options["email"]
        self.telegram=options["telegram"]
    end

    def Student.from_s(str)
        hash=str.split(',').map{|tuple| tuple.split(':')}.to_h
        raise ArgumentError,"Invalid name" unless hash.key?("name")&&Student.name_valid?(hash["name"])
        raise ArgumentError,"Invalid last name" unless hash.key?("last_name")&&Student.name_valid?(hash["last_name"])
        raise ArgumentError,"Invalid params" if hash.reject{|k,v| k=='name'||k=='last_name'}.find{|key,value| !eval("self."+key+"_valid? \""+value+"\"") }
        Student.new(name:hash["name"],last_name:hash["last_name"],options:hash)

    end

    def self.phone_valid?(phone)
        phone.match /^\+?[7,8]{1}\-\d{3}\-\d{3}\-\d{2}\-\d{2}$/
    end
    
    def phone=(phone)
        raise ArgumentError,"Invalid phone number" if !phone.nil?&&!Student.phone_valid?(phone)
        @phone = phone
    end
    
    def self.id_valid?(id)
        String(id).match /^[0-9]+$/
    end

    def id=(id)
        raise ArgumentError,"Invalid id" if !id.nil?&&!Student.id_valid?(id)
        @id=id
    end

    def self.name_valid?(name)
        name.match /^[A-Z][^A-Z\d]+$/
    end
    
    def name=(name)
        raise TypeError, "Bad name: #{name}" if !name.nil?&&!Student.name_valid?(name)
        @name=name
    end
    def last_name=(last_name)
        raise TypeError, "Bad name: #{last_name}" if !last_name.nil?&&!Student.name_valid?(last_name)
        @last_name = last_name
    end
    def self.git_valid?(git)
        git.match /^[\d\w]+$/
    end
    def git=(git)
        raise TypeError, "Bad git: #{git}" if !git.nil?&&!Student.git_valid?(git)
        @git = git
    end

    def self.telegram_valid?(telegram)
        telegram.match /^[\w\d\s]+$/
    end

    def telegram=(telegram)
        raise TypeError, "Bad telegram: #{telegram}" if !telegram.nil?&&!Student.telegram_valid?(telegram)
        @telegram = telegram
    end

    def self.email_valid?(gmail)
        gmail.match /^[\d\w]+\@gmail.com$/
    end

    def email=(email)
        raise TypeError, "Bad mail!!!!: #{email}" if !email.nil?&&!Student.email_valid?(email)
        @email = email
    end

    def git?
        !self.git.nil?
    end

    def contacts?
        !self.phone.nil?||!self.email.nil?||!self.telegram.nil?
    end

    def set_contacts(contacts)
        self.phone=contacts[:phone] unless !contacts.key?(:phone)
        self.email=contacts[:email] if  contacts.key?(:email)
        self.telegram=contacts[:telegram] if contacts.key?(:telegram)
    end

    def getInfo 
        "name: "+@last_name+" "+@name[0]+git_to_s+get_contacts
    end
   

    private

    def git_to_s
        return "" unless self.git?
        ", git: #{@git}"
    end
    def get_contacts
        return "" unless contacts?
        telegram_to_s+phone_to_s+email_to_s
    end
  
    def email_to_s
        return "" if self.email.nil?
        ", email: #{@email}"
    end
    def telegram_to_s
        return "" unless !self.telegram.nil?
        ", telegram: #{@telegram}"
    end
    
    def phone_to_s
        return "" if self.phone.nil?
        ", phone: #{@phone}"
    end
    

end

    
    
