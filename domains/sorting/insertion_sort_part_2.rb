def  insertion_sort(count, array)
  final_array = []
  loop do
    if array.length == 1
      final_array << array.shift
      break
    end
    if array[0] < array[1]
      final_array << array.shift
    else
      final_array << array.delete_at(1)
    end
    puts (final_array.sort + array).join(' ')
  end
end
count = gets.to_i
array = gets.strip.split(' ').map(&:to_i)
insertion_sort(count, array)
