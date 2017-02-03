number_of_chapters, max_number_of_problems = gets.chomp.split
number_of_problems_array = gets.chomp.split
number_of_special_problems = 0
number_of_pages_in_book = 0
number_of_problems_array.each do |i|
  until i == 0
    i -= max_number_of_problems
    number_of_pages_in_book += 1
  end
end
