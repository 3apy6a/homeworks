# 6. calculate the total price using different methods: each and inject
# 7. calculate the average price
# 8. select clothes with the price higher than 100 (should receive an array_
# 9. select clothes with the title which contains an "S" letter
# 10. get array of titles from clothes
# 11. Add some new fields to each item, let it be a description and a discount.
# You could generate a random string for description.
# The discount should be an integer number from 3 to 10, use random method for its generation.


clothes = [
  {
    title: "Jacket",
    price: 45.39
  },
  {
    title: "Black Jacket",
    price: 56.32
  },
  {
    title: "Suite",
    price: 100.68
  },
  {
    title: "Diving Suite",
    price: 500.37
  },
  {
    title: "Skirt",
    price: 13.0
  },
  {
    title: "T-shirt",
    price: 23.71
  }
]
# total prices
p "total price one string + if"
total_price = 0
clothes.each {|element| total_price += element[:price] if element[:price]}
p  "total price: #{total_price}"

p "--------------------------------"

p "total_price - 3 strings"
total_price = 0
clothes.each do|element|
  if element[:price]
  total_price += element[:price]
    end
end
p  "total price: #{total_price}"

p '--------------------------------'

# average price
p "average price"
total_price = 0
prices = clothes.length
clothes.each {|element| total_price += element[:price] if element[:price]}
average_price = total_price / prices
p "average_price: #{average_price}"

p "--------------------------------"

# if the price is more than 100$
p "things that cost more than 100:"
over_100 = []
clothes.each {|element| over_100 << element[:title] if element[:price] > 100.00}
p over_100

p "--------------------------------"

# titles from clothes
p "titles from clothes:"
titles = []
clothes.each {|element| titles << element[:title] if element[:title]}
p titles

p "--------------------------------"

# titles from clothes include S and s
p "titles include S and s:"

s_titles = []
clothes.each do |element|
   if element[:title].include?("S")
    s_titles << element[:title]
   elsif element[:title].include?("s")
    s_titles << element[:title]
    end
  end
p s_titles

p '------------------------------'

#if-elsif
p "if-elsif"
s_titles = []
clothes.each do |element|
  if element[:title].include?("S")
  s_titles << element[:title]
    end
  if element[:title].include?("s")
  s_titles << element[:title]
    end
end
p s_titles

p '------------------------------'

p 'in one string + if'
title_s = []
clothes.each {|element| title_s << element[:title] if element[:title].include?("S") || element[:title].include?("s")}
p title_s

p "-------------------------------"

# 11. Add some new fields to each item, let it be a description and a discount.
# You could generate a random string for description.
# The discount should be an integer number from 3 to 10, use random method for its generation.
def description(length = 25)
  chars = [* ('A'..'Z'), * ('a'..'z'), * (0..9)]
  (0..length).map {chars.sample}.join
end
clothes.each {|element| element.store(:discount, rand(3..10)) && element.store(:description,"#{description}")}
p clothes