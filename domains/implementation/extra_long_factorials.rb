number = gets.to_i
array = *(1..number)
p array.inject(1) {|factorial, i| factorial * i}
