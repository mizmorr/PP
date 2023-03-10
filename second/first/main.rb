load 'student.rb'
student = Student.new("John",0,"Doe","joe_doe","15-33","joe286")
student2 = Student.new("John2",1,"Doe2","joe_doe2","16-34","joe287")

p student.Name
p student2.Name
student2.print_student()