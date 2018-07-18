# Write a program which prints out the lyrics to that beloved classic,
# that field-trip favorite: "99 Bottles of Beer on the Wall."
line_width = 50
title = 'Song: 99 Bottles of Beer'
puts title.center line_width
bottle = ''
while bottle != '1'
  bottle = gets.chomp
  bottle_m = bottle.to_i - 1
  puts "#{bottle} bottles of beer on the wall"
  puts "#{bottle} bottles of beer!"
  puts 'Take one down, pass it around'
  puts "#{bottle_m} bottles of beer on the wall!"
  puts '-------------------------------------'
end
puts "No more bottles of beer on the wall, no more bottles of beer.
We've taken them down and passed them around; now we're drunk and passed out!"
puts '---------------------------------------'
