t =  gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  decent_number = '5' * n
  threes = 0
  until ((decent_number.count('5')) % 3 == 0 && (decent_number.count('3') % 5) == 0) do
    if [1, 2, 4, 7].include? n
      decent_number = -1
      break
    elsif n == 3
      decent_number = 555
      break
    else
      threes += 5
      fives = n - threes
      decent_number = ('5' * fives) + ('3' * threes)
    end
  end
  puts decent_number
end
