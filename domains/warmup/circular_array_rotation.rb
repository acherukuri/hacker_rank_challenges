n, k, q = gets.strip.split(' ').map(&:to_i)
a = gets.strip.split(' ')
k.times do
    i = a.pop
    a.unshift(i)
end
final_array = []
q.times do
  final_array << a[gets.to_i]
end
puts final_array
