require 'json'
load 'abstract_s.rb'
class Student < Abstract_Student
    attr_reader :Phone,
                :Git,
                :Telegram,
                :Email

    
    def initialize(name:,last_name:,options:{})
        @Name,@Last_name=name,last_name
        self.ID=options["id"]
        self.Git=options["git"]
        self.Phone=options["phone"]
        self.Email=options["email"]
        self.Telegram=options["telegram"]
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
    
    def Phone=(phone)
        raise ArgumentError,"Invalid phone number" if !phone.nil?&&!Student.phone_valid?(phone)
        @Phone = phone
    end
    
    def self.id_valid?(id)
        String(id).match /^[0-9]+$/
    end

    def ID=(id)
        raise ArgumentError,"Invalid ID" if !id.nil?&&!Student.id_valid?(id)
        @ID=id
    end

    def self.name_valid?(name)
        name.match /^[A-Z][^A-Z\d]+$/
    end
    
    def Name=(name)
        raise TypeError, "Bad name: #{name}" if !name.nil?&&!Student.name_valid?(name)
        @Name=name
    end
    def Last_name=(last_name)
        raise TypeError, "Bad name: #{last_name}" if !last_name.nil?&&!Student.name_valid?(last_name)
        @Last_name = last_name
    end
    def self.git_valid?(git)
        git.match /^[\d\w]+$/
    end
    def Git=(git)
        raise TypeError, "Bad git: #{git}" if !git.nil?&&!Student.git_valid?(git)
        @Git = git
    end

    def self.telegram_valid?(telegram)
        telegram.match /^[\w\d\s]+$/
    end

    def Telegram=(telegram)
        raise TypeError, "Bad telegram: #{telegram}" if !telegram.nil?&&!Student.telegram_valid?(telegram)
        @Telegram = telegram
    end

    def self.email_valid?(gmail)
        gmail.match /^[\d\w]+\@gmail.com$/
    end

    def Email=(email)
        raise TypeError, "Bad mail!!!!: #{email}" if !email.nil?&&!Student.email_valid?(email)
        @Email = email
    end

    def git?
        !self.Git.nil?
    end

    def contacts?
        !self.Phone.nil?||!self.Email.nil?||!self.Telegram.nil?
    end

    def set_contacts(contacts)
        self.Phone=contacts[:Phone] unless !contacts.key?(:Phone)
        self.Email=contacts[:Email] if  contacts.key?(:Email)
        self.Telegram=contacts[:Telegram] if contacts.key?(:Telegram)
    end

    def self.from_txt(path_name)
        raise FileNotFoundError if !File.exist?(path_name)
        File.read(path_name).split("\n").map{|line| Student.parse_s(line)}
    end
   
    def Student.parse_s(str)
        hash = JSON.parse("{"+str.split(',').map{|elem| elem.split(':')}.map{|el| "\""+el[0]+"\""+":"+"\""+el[1]+"\""}.join(',')+"}")
        raise ArgumentError, "Invalid arguments" if hash["name"].nil?||hash["last_name"].nil?
        new name:hash["name"], last_name:hash["last_name"],options:hash
    end
    def self.write_to_txt(path_name,student)
        raise FileNotFoundError if !File.exist?(path_name)
        File.open(path_name,'w') {|file| file.write(student.map{|stud|stud.getInfo}.join("\n"))}
    end
    def getInfo 
        "name: "+@Last_name+" "+@Name[0]+git_to_s+get_contacts
    end
   

    private

    def git_to_s
        return "" unless self.git?
        ", git: #{@Git}"
    end
    def get_contacts
        return "" unless contacts?
        telegram_to_s+phone_to_s+email_to_s
    end
  
    def email_to_s
        return "" if self.Email.nil?
        ", email: #{@Email}"
    end
    def telegram_to_s
        return "" unless !self.Telegram.nil?
        ", telegram: #{@Telegram}"
    end
    
    def phone_to_s
        return "" if self.Phone.nil?
        ", phone: #{@Phone}"
    end
    

end

    
    
