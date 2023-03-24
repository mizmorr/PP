load 'student.rb'
load 'student_short.rb'

require 'json'
# student = Student.new name:"John",last_name:"Doe",options:{"Telegram"=>"joe","Phone"=>"+8-960-491-22-03","ID"=>1}

# puts student.to_s
# str= '{"Name":"Bob","Last_name":"Dirk","Git":"dirky_git"}'
# student2 = Student.parse_s(str)
# puts student2.to_str
student=Student.from_s("name:Bob,last_name:Doe,id:1,git:bobby123,telegram:bob_doe")
p Student_short.from_student(student)
st = Student_short.from_s(1,"name:Bob D,git:bob123,contact:bob@gmail.com")
p st
