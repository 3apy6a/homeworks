# Extend your Deaf Grandma program: What if grandma doesn't want you to leave? When you shout BYE, she could pretend not to hear
# you. Change your previous program so that you have to shout BYE three times in a row. Make sure to test your program: 
# if you shout BYE three times, but not in a row, you should still be talking to grandma.
puts 'WHO IS THERE?'
puts 'GRANDSON? IT IS YOU?'
talking = ''
while talking != 'BYE ' * 3
  talking = gets.chomp
      if talking == talking.upcase
        puts "NO, NOT SINCE #{rand(1938..1950)}"
      else
        puts 'HUH?!  SPEAK UP, SONNY!'
        end
  end
puts 'BYE GRANDSANY, COME AGAIN'
