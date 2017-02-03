require 'set'
require 'pry'

def palindrome(string)
  substring_set = Set.new
  (0..string.length).each do |i|
    (0..string.length - i).each do |j|
      substring_set.add(string[i, j + 1])
    end
  end
  number_od_palindrome_substrings = 0
  substring_set.delete("").each do |i|
    number_od_palindrome_substrings += 1 if i == i.reverse
  end
  number_od_palindrome_substrings
end

p palindrome('aabaa')
