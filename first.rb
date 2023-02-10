puts 'Hello world!'
puts "Hello #{`whoami`}"
puts 'whats lang'
str = gets.chomp
case str 
    when "ruby"
        puts "sneaky"
    when "c"
        puts "respect"
    else
        puts 'dunno'
    end
puts 'command'
str = gets.chomp
system "ruby -e \'#{str}\'"
puts 'another command'
str = gets.chomp
system "ruby -e \'#{str}\'"
