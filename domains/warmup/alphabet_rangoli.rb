print 'enter a number to see alphabet rangoli: '
length = gets.chomp.to_i
if length < 1 || length > 26
  print 'number should be between 0 and 27'
  exit 1
end
alphabet_list = *('a'..'z').to_a.take(length).reverse
palindrome_list = (alphabet_list + alphabet_list.take(alphabet_list.length - 1).reverse)
@center_row_length = palindrome_list.join('-').length
def get_alphabet_palindrome_string(list)
  list.length == 1 ? list.join : (list + list.take(list.length - 1).reverse).join('-')
end
def get_string_with_dashes(palindrome_string)
  dashes_length = @center_row_length - palindrome_string.length
  '-' * (dashes_length / 2) + palindrome_string + '-' * (dashes_length / 2)
end
palindrome_list.each do |alphabet|
  alphabet_index = palindrome_list.find_index(alphabet)
  pal_string = get_alphabet_palindrome_string(palindrome_list.take(alphabet_index + 1))
  puts get_string_with_dashes(pal_string)
end