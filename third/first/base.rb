#!/usr/bin/ruby
require 'mysql2'

@db_host = "localhost"

@db_user="root"

@pasrd="1@qAwSxZ"

@db_name="Ruby"
client = Mysql2::Client.new(:host=>@db_host, :username=>@db_user, :password=>@pasrd, :database=>@db_name)
puts client.query("SELECT * FROM Student").entries