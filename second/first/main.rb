load 'student.rb'
require 'json'
# student = Student.new name:"John",last_name:"Doe",options:{"Telegram"=>"joe","Phone"=>"+8-960-491-22-03","ID"=>1}

# puts student.to_s
# str= '{"Name":"Bob","Last_name":"Dirk","Git":"dirky_git"}'
# student2 = Student.parse_s(str)
# puts student2.to_str
student=Student.from_s("name:Bob,last_name:Dirk,id:1,git:bobby123")
puts student.getInfo


