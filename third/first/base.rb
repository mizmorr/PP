#!/usr/bin/ruby
require 'mysql2'


class Connect 
    attr_reader :connection

    def initialize
        @connection=Mysql2::Client.new(:host=>'localhost', :username=>'root', :password=>'1@qAwSxZ', :database=>'Ruby')
    end

end