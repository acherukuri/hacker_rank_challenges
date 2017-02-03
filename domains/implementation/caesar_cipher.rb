# string_length = gets.strip.to_i
# string = gets.strip
# @encryption_key = gets.strip.to_i
# @encryption_string = ''
# def encryt(i)
#   @encryption_key.times do
#     i = i.next
#     if i == 'z'
#       i = '`'
#     elsif i == 'Z'
#       i = '@'
#     end
#   end
# @encryption_string << case i
#                       when '`'
#                         'z'
#                       when '@'
#                         'Z'
#                       else
#                         i
#                       end
# end
# string_array = string.split('')
# string_array.each do |i|
#   if (i =~ /[a-yA-Y]/) == 0
#     encryt(i)
#   elsif i == 'z'
#     i = '`'
#     encryt(i)
#   elsif i == 'Z'
#     i = '@'
#     encryt(i)
#   else
#     @encryption_string << i
#   end
# end
# puts @encryption_string


l = gets.to_i
s = gets.chomp.strip
k= gets.to_i
a = ("a".."z").to_a+("A".."Z").to_a
0.upto(l-1){|i| k.times{s[i]=s[i].next[0]} if a.include? s[i]}
puts s
