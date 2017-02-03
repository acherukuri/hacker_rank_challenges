t = gets.strip.to_i
t.times do
  n = gets.strip.to_i
  digits_array = n.to_s.split('').map(&:to_i)
  count = 0
  digits_array.each do |i|
    if i > 0 && n % i == 0
      count += 1
    end
  end
  puts count
end
