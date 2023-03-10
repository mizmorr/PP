require 'json'

class Student
    attr_reader :Phone,
                :ID,
                :Name,
                :Last_name,
                :Git,
                :Telegram,
                :Email

    
    def initialize(name:,last_name:,options:{})
        @Name,@Last_name=name,last_name
        self.ID=options["ID"]
        self.Git=options["Git"]
        self.Phone=options["Phone"]
        self.Email=options["Email"]
        self.Telegram=options["Telegram"]
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

    def self.gmail_valid?(gmail)
        gmail.match /^[\d\w]+\@gmail.com$/
    end

    def Email=(email)
        raise TypeError, "Bad mail!!!!: #{email}" if !email.nil?&&!Student.gmail_valid?(email)
        @Email = email
    end

    def git?
        !self.Git.nil?
    end

    def contacts?
        !self.Phone.nil?||!self.Email.nil?||!self.Telegram.nil?
    end

    def validate
        self.git?||self.contacts?
    end

    def set_contacts(contacts)
        self.Phone=contacts[:Phone] unless !contacts.key?(:Phone)
        self.Email=contacts[:Email] if  contacts.key?(:Email)
        self.Telegram=contacts[:Telegram] if contacts.key?(:Telegram)
    end

    def to_s
        str="Name: #{@Name}, Last name: #{@Last_name}"
        str+=", Git: #{@Git}" unless @Git.nil?
        str+=", Telegram: #{@Telegram}" if not @Telegram.nil?
        str

    end

    def Student.parse_s(str)
        hash = JSON.parse(str)
        raise ArgumentError, "Invalid arguments" if hash["Name"].nil?||hash["Last_name"].nil?
        new name:hash["Name"], last_name:hash["Last_name"],options:hash.reject!{|k,v| k=='Name'||k=='Last_name'}
    end
end

    
    
