load 'task1_2/student.rb'
load 'task1_2/student_short.rb'
load 'task3/data_list_student_short.rb'

require 'json'

list = Student.from_txt('task1_2/data.txt')
dlt = Data_list_student_short.new(list:list)
dlt_2 = Data_list_student_short.new(list:list)

p dlt.get_data

p dlt_2.get_data

