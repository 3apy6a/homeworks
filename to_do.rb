# TODO:
# 1. calculate the sum of all elements in array using different methods: each and inject
# 2. calculate the sum of even elements(index of element is: 0, 2, 4...) in array
# 3. calculate the sum of odd elements(index of element is: 1, 3, 5...) in array
# 4. calculate the sum of even numbers
# 5. calculate the sum of odd numbers

arr = [23, 43, 65, 76, 89, 9, 45, 67, 23, 4, 68, 12, 45, 65, 69, 44, 2, 498, 1, 77, 33, 8]
puts 'sum of arrow method .sum'
puts arr.sum  #=> 1366 sum of arr
puts '-----------------------------------'
puts '1 method each'
sum = 0
arr.each { |e| sum += e }
puts sum
puts '-----------------------------------'

puts '1.2 method inject'
puts arr.inject(0) { |a, b| a + b }
puts '-----------------------------------'

sum_e = 0
sum_o = 0
arr.each_index do |x|
    if x.even?
    sum_e += arr[x] if arr[x].class == Fixnum
  else
    sum_o += arr[x] if arr[x].class == Fixnum
  end
end
puts sum_e, sum_o
pust '---------------------------'

puts 'sum of even end odd elements'
arr_e = arr.find_all { |elem| elem.even? } # even elements
puts '4 sum of even elements'
puts arr_e.sum # sum of even elements of arrow
puts '5 sum of odd elements'
arr_o = arr.find_all { |elem| elem.odd? }
puts arr_o.sum
puts "Check" # check sum of even & odd arr
puts arr_e.sum + arr_o.sum

