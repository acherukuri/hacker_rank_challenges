
t = gets.strip.to_i
t.times do
    n, k = gets.strip.split(' ').map(&:to_i)
    negative_count = gets.strip.split(' ').map(&:to_i).count { |x| x == 0 || x < 0 }
    puts negative_count >= k ? 'NO' : 'YES'
end
