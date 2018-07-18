puts 'Enter start year:'
year1 = gets.chomp.to_i
puts 'Enter finish year:'
year2 = gets.chomp.to_i
puts "Years from #{year1} to #{year2}."
while year1 != year2 + 1
  if (year1.to_i % 400).zero? || (year1.to_i % 4).zero? && (year1.to_i % 100 != 0)
    puts "#{year1} - is a leap year'"
  else
    puts "#{year1} - is not a leap year"
  end
year1 = year1.to_i
year1 += 1
end
