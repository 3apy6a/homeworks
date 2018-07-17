puts 'What is your name?'
name = gets.chomp
puts 'What is your surname?'
s_name = gets.chomp
summ = name.length + s_name.length
puts "Did you know there are #{summ}.characters in your name, #{name}?"
