load 'task1_2/student.rb'
load 'task1_2/student_short.rb'
load 'task3/data_list_student_short.rb'
load 'task3/names_pattern/names_filter.rb'
load 'task3/names_pattern/names_template.rb'
load 'task3/data_pattern/data_template.rb'
load 'task3/data_pattern/data_construct.rb'
load 'task4/student_list_txt.rb'
load 'task4/student_list_JSON.rb'
load 'task4/student_list_default.rb'
load 'third/first/student_list_db.rb'



require 'json'



# student_json=Student_list_json.new path_name: 'task4/data.json'
student_default=Student_list_default.new(path_name: 'task1_2/data.txt',strategy:Student_list_txt.new)
student=student_default.from[0]

student_h=student.instance_variables.each_with_object({}){|v,h| h[v]=student.instance_variable_get(v)}.to_h
p student_h[:@name]

Student_list_DB.count
# filter = Names_without_id.new
# constr = Data_construct.new
# data_list = Data_list_student_short.new(list:list,filter:filter,constructor:constr)
# p data_list.get_data
# p data = data_list.get_names

# p raise 'does not exist' unless ![1,2,3,4].detect{|elem| elem==5}.nil?
#--------------------------------------------------------

# p data_list.get_names.map{|elem| elem.downcase}
# str=""
# (1..data.columns_count-1).each{|ind| str=str+(data.at 0,ind)+","}
# student2=Student_short.from_s(data.at(0,0),str[0...-1]) 


# list2 = Student.from_txt('task1_2/data2.txt')
# data_list.set_list(list2)
# p data_list.get_data

# -----------------------------

# student = list[0]
# p student.getInfo.split(',').map{|elem| elem.lstrip}

# p list.map{|elem| elem.getInfo.split(',').map{|elem| elem.lstrip}}
# list.length.times{|i| result.push([i].concat list[i].getInfo.split(',').map{|elem| elem.lstrip})}
# p result
# dt = Data_template.new()
# dt.construct(list3)


# p list2.get_names
# p dlt.get_data

# p dlt_2.get_data

