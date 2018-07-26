# write a program which asks us to type in as many words as we want (one word per line, continuing until we just press Enter
# on an empty line), and which then repeats the words back to us in alphabetical order.

words = []
word = ''
puts 'Enter any words:'
word = gets.chomp
while word != '' || word == nil
  words.push word
  word = gets.chomp
end
puts words.sort.to_s
