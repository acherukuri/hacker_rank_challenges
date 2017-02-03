def calculate(score)
    array_length = score.length
    left = Array.new(array_length)
    right = Array.new(array_length)
    candies = 0
    left[0] = 1

    i = 1
    while i < array_length
      left[i] = score[i] > score[i - 1] ? left[i - 1] + 1 : 1
      i += 1
    end
    right[array_length - 1] = 1

    j = array_length - 2
    while j >= 0
      right[j] = score[j] > score[j + 1] ? right[j + 1] + 1 : 1
      j -= 1
    end

    k = 0
    while k < array_length
      candies += [left[k], right[k]].max
      k += 1
    end
    candies
end

puts calculate([1, 2, 2])
