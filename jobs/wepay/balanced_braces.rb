def braces(values)
  values.map { |i| valid_string?(i) }
end

def valid_string?(string)
  open_paren = ['[','{','(']
  close_paren = [']','}',')']
  open_close_hash = {"]"=>"[", "}"=>"{", ")"=>"("}
  stack = []
  regex = Regexp.union(close_paren+open_paren)
  string.scan(regex).each do |char|
    if open_paren.include? char
      stack.push(char)
    elsif close_paren.include? char
      pop_val = stack.pop
      return 'NO' if pop_val != open_close_hash[char]
    end
  end
  'YES' if open_paren.none? { |paren| stack.include? paren }
end


puts braces(['{}[]()', '{[}]}', '{}[]()', '{[}]}'])
