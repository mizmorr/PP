load 'task1_2/student.rb'
load 'task1_2/student_short.rb'
load 'task3/data_list_student_short.rb'
load 'task3/names_pattern/names_filter.rb'
load 'task3/names_pattern/names_template.rb'
load 'task3/data_pattern/data_template.rb'
load 'task3/data_pattern/data_construct.rb'





list = Student.from_txt('task1_2/data.txt')
filter = Names_without_id.new
constr = Data_construct.new
data_list = Data_list_student_short.new(list:list,filter:filter,constructor:constr)

p data = data_list.get_names

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

