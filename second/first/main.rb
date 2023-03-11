load 'student.rb'
student = Student.new name:"John",last_name:"Doe",options: {Telegram:"joe",Phone:"+8-960-491-22-03",ID:1}

# student2 = Student.new("John2",1,"Doe2","joe_doe2","16-34","joe287")

# p student.Name
# p student2.Name
# student2.print_student()
p student.validate