line_width = 50
str1 = 'Table of Contents'
str2 = 'Chapter 1:  Nambers'
str3 = 'page 1'
str4 = 'Chapter 2:  Letters'
str5 = 'page 72'
str6 = 'Chapter 3:  Variables'
str7 = 'page 118'
puts str1.center line_width
puts '' * 2
puts str2.ljust(line_width / 2) + str3.rjust(line_width / 2)
puts str4.ljust(line_width / 2) + str5.rjust(line_width / 2)
puts str6.ljust(line_width / 2) + str7.rjust(line_width / 2)
