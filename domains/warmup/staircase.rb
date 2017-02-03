length = gets.to_i
dup = length.to_i
count = 0
while count != length
  count += 1
    dup -= 1
    puts "#{ " " * dup}#{ "#" * count}"
end
