puts 'WHO IS THERE?'
puts 'GRANDSON? IT IS YOU?'
talking = ''
while talking != 'BYE'
      puts 'HUH?!  SPEAK UP, SONNY!'
      talking = gets.chomp
    if talking == talking.upcase 
        puts "NO, NOT SINCE #{rand(1938..1950)}"
        talking = gets.chomp
        end   
end
puts 'BYE GRANDSANY, COME AGAIN'
