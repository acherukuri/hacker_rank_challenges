require 'pry'

t = gets.strip.to_i
t.times do
    n = gets.strip.to_i
    if n == 0
      puts 1
    else
      cycles_array = *(1..n)
      final_length = 1
      cycles_array.each do |i|
        if i.even?
          final_length += 1
        else
          final_length *= 2
        end
      end  
      puts final_length
    end
end
