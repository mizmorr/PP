load 'student.rb'
load 'student_short.rb'

require 'json'

students = Student.from_txt('data.txt')
Student.write_to_txt('result.txt',students)
