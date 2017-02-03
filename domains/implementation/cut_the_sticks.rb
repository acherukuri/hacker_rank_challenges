#!/bin/ruby
array_length = gets.chomp.to_i
array = gets.split.map(&:to_i).sort
until array.empty?
    puts array.length
    cut_size = array.min
    array.delete(cut_size)
    array.map! { |i| i - cut_size}
end
